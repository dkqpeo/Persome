package com.c3l2.persome.user.security;

import com.c3l2.persome.entity.user.User;
import com.c3l2.persome.user.repository.UserRepository;
import com.c3l2.persome.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class CustomUserDetailsService implements UserDetailsService {

    private final UserService userService;

    @Override
    public UserDetails loadUserByUsername(String loginId) throws UsernameNotFoundException {
        User user = userService.findByLoginIdOrThrow(loginId);

        return new CustomUserDetails(user);
    }
}
