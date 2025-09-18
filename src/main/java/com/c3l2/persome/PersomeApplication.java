package com.c3l2.persome;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@EnableScheduling
public class PersomeApplication {

	public static void main(String[] args) {
		SpringApplication.run(PersomeApplication.class, args);
	}

}
