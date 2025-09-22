/*
package com.c3l2.persome.user.service;


import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class EmailService {
    private final JavaMailSender mailSender;

    public void sendPasswordEmail(String to, String tempPassword) {
        SimpleMailMessage message = new SimpleMailMessage();
        message.setTo(to);
        message.setSubject("Persome 임시 비밀번호 안내");
        message.setText("임시 비밀번호: " + tempPassword + "\n로그인 후 반드시 변경해주세요.");
        mailSender.send(message);
    }
}

// 나중에 실제로 메일 발송할 시 application.yml 파일에 추가할
spring:
  mail:
    host: smtp.gmail.com   # 또는 네이버/회사 SMTP 서버
    port: 587
    username: your_email@gmail.com
    password: app_password   # 앱 비밀번호 (실제 계정 비밀번호 아님)
    properties:
      mail:
        smtp:
          auth: true
          starttls:
            enable: true
 */