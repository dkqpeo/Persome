package com.c3l2.persome.user.repository;

import com.c3l2.persome.membership.entity.MembershipLevel;
import com.c3l2.persome.user.entity.Status;
import com.c3l2.persome.user.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Optional;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
    // 중복 회원가입 방지
    boolean existsByLoginId(String loginId);
    boolean existsByEmail(String email);

    // 로그인: loginId로 유저 찾기 / 비밀번호 찾기: 1단계
    Optional<User> findByLoginId(String loginId);

    // 비밀번호 찾기 (아이디 + 전화번호)
    Optional<User> findByLoginIdAndPhone(String loginId, String phone);

    // 휴면 전환
    List<User> findByStatusAndLastLoginAtBefore(Status status, LocalDateTime cutoff);

    // 상태별 조회 (예: 휴면 회원)
    List<User> findByStatus(Status status);

    // 아이디 찾기(이름 + 이메일)
    Optional<User> findByNameAndEmail(String name, String email);

    Optional<User> findByLoginIdAndEmail(String loginId, String email);

    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query("update User u set u.membershipLevel = :membershipLevel where u.id = :id")
    int updateMembershipLevel(@Param("id") Long id, @Param("membershipLevel") MembershipLevel membershipLevel);

    @Modifying(clearAutomatically = true, flushAutomatically = true)
    @Query("update User u set u.isAdmin = :isAdmin where u.id = :id")
    int updateAdminFlag(@Param("id") Long id, @Param("isAdmin") boolean isAdmin);
}
