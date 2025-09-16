package com.c3l2.persome.user.scheduler;

import com.c3l2.persome.user.service.UserService;
import lombok.RequiredArgsConstructor;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;


@Component
@RequiredArgsConstructor
public class UserScheduler {
    private final UserService userService;

    @Scheduled(cron = "0 0 0 * * *", zone = "Asia/Seoul")
    public void runDormantTask() {
        userService.deactivateDormantUsers();
    }

}
