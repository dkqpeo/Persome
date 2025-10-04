package com.c3l2.persome.config;

import com.c3l2.persome.user.security.CustomOAuth2UserService;
import com.c3l2.persome.user.security.CustomUserDetailsService;
import com.c3l2.persome.user.security.OAuth2LoginSuccessHandler;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.config.annotation.web.configurers.HeadersConfigurer;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.savedrequest.HttpSessionRequestCache;

@Slf4j
@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain filterChain(HttpSecurity http,
                                           CustomOAuth2UserService customOAuth2UserService,
                                           OAuth2LoginSuccessHandler oauth2LoginSuccessHandler) throws Exception {
        http
                .csrf(AbstractHttpConfigurer::disable)

                .authorizeHttpRequests(auth -> auth
                        // 정적 리소스 무조건 허용
                        .requestMatchers(
                                "/swagger-ui.html",
                                "/swagger-ui/**",
                                "/v3/api-docs/**",
                                "/header.html",
                                "/footer.html",
                                "/css/**",
                                "/js/**",
                                "/images/**",
                                "/webjars/**"
                        ).permitAll()

                        // 뷰 컨트롤러 (GET 요청만)
                        .requestMatchers(HttpMethod.GET, "/users/login", "/users/register",
                                "/users/find-id", "/users/find-password", "/users/terms", "/ranking").permitAll()

                        // API - 인증 불필요
                        .requestMatchers(HttpMethod.POST, "/api/users/login").permitAll()
                        .requestMatchers(HttpMethod.POST, "/api/users/register").permitAll()
                        .requestMatchers(HttpMethod.GET, "/api/users/check-id").permitAll()
                        .requestMatchers(HttpMethod.POST, "/api/users/find-id").permitAll()
                        .requestMatchers(HttpMethod.POST, "/api/users/find-password").permitAll()
                        .requestMatchers(HttpMethod.POST, "/api/users/terms/agree").permitAll()

                        // ✅ 홈
                        .requestMatchers("/").permitAll()
                        //.requestMatchers("/**").permitAll()
                        .requestMatchers(HttpMethod.GET, "/orders/**").permitAll()
                        .requestMatchers(HttpMethod.GET, "/events/**").permitAll()
                        .requestMatchers(HttpMethod.GET, "/api/events/**").permitAll()
                        .requestMatchers(HttpMethod.GET, "/products/popular", "/products/new").permitAll()
                        .requestMatchers(HttpMethod.GET, "/api/products/**").permitAll()
                        .requestMatchers(HttpMethod.GET, "/api/ranking/**").permitAll()
                        .requestMatchers(HttpMethod.GET, "/api/categories/**").permitAll()
                        .requestMatchers("/api/admin/**").hasRole("ADMIN")
                        .requestMatchers("/admin/**").hasRole("ADMIN")
                        .anyRequest().authenticated()
                )

                .headers(headers -> headers
                        .cacheControl(HeadersConfigurer.CacheControlConfig::disable) // 캐시 비활성화
                )

                /*.formLogin(form -> form
                        .loginPage("/users/login")
                        .usernameParameter("loginId")
                        .passwordParameter("password")
                        .defaultSuccessUrl("/", true)
                        .failureUrl("/users/login?error")
                        .permitAll()
                )*/
                .formLogin(AbstractHttpConfigurer::disable)
                .sessionManagement(session -> session
                        // 세견 기반: 필요 시 생성, 세션 고정 보호
                        .sessionCreationPolicy(SessionCreationPolicy.IF_REQUIRED)
                        .sessionFixation().newSession()
                        .maximumSessions(1)
                        .maxSessionsPreventsLogin(false)
                )
                //.requestCache(c -> c.requestCache(new NullRequestCache()))
                .logout(logout -> logout
                        .logoutUrl("/users/logout")
                        .logoutSuccessUrl("/") // ✅ 로그아웃하면 홈으로
                        .invalidateHttpSession(true)
                        .deleteCookies("JSESSIONID")
                        .permitAll()
                )
                .oauth2Login(oauth -> oauth
                        .loginPage("/users/login")
                        .userInfoEndpoint(userInfo -> userInfo.userService(customOAuth2UserService)) // ✅ 주입받은 Bean 사용
                        .successHandler(oauth2LoginSuccessHandler)
                        .failureHandler((request, response, exception) -> {
                            log.error("카카오 로그인 실패: {}", exception.getMessage(), exception);
                            response.sendRedirect("/users/login?error");
                        })
                )
                // ✅ SavedRequest 커스터마이징: API 요청은 캐싱 안 함
                .requestCache(cache -> cache.requestCache(new HttpSessionRequestCache() {
                    @Override
                    public void saveRequest(HttpServletRequest request, HttpServletResponse response) {
                        if (request.getRequestURI().startsWith("/api")) {
                            return; // API 요청은 저장하지 않음
                        }
                        super.saveRequest(request, response);
                    }
                }))
                .exceptionHandling(ex -> ex
                        // 뷰 요청 → 로그인 페이지로만 이동
                        .defaultAuthenticationEntryPointFor(
                                (request, response, authException) -> {
                                    String uri = request.getRequestURI();
                                    String query = request.getQueryString();
                                    String redirect = uri + (query != null ? "?" + query : "");
                                    response.sendRedirect("/users/login?redirect=" + redirect);
                                },
                                request -> request.getRequestURI().startsWith("/users")
                        )

                        // REST 요청 → 401 JSON 응답
                        .defaultAuthenticationEntryPointFor(
                                (request, response, authException) -> {
                                    response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
                                    response.setContentType("application/json;charset=UTF-8");
                                    response.getWriter().write("{\"error\":\"UNAUTHORIZED\"}");
                                },
                                request -> request.getRequestURI().startsWith("/api")
                        )
                );

        return http.build();
    }

    // 비밀번호 암호하기
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public DaoAuthenticationProvider authenticationProvider(CustomUserDetailsService customUserDetailsService,
                                                            PasswordEncoder passwordEncoder) {
        DaoAuthenticationProvider provider = new DaoAuthenticationProvider();
        provider.setUserDetailsService(customUserDetailsService);
        provider.setPasswordEncoder(passwordEncoder);
        return provider;
    }

    // ✅ AuthenticationManager 등록
    // DaoAuthenticationProvider를 AuthenticationManager에 직접 넣어줌
    @Bean
    public AuthenticationManager authenticationManager(HttpSecurity http,
                                                       DaoAuthenticationProvider authProvider) throws Exception {
        return http.getSharedObject(AuthenticationManagerBuilder.class)
                .authenticationProvider(authProvider) // 우리가 만든 Provider 사용
                .build();
    }

//    // 인증 매니저 (Spring Security 내부 인증 처리)
//    @Bean
//    public AuthenticationManager authenticationManager(AuthenticationConfiguration config) throws Exception {
//        return config.getAuthenticationManager();
//    }

}
