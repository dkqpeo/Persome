package com.c3l2.persome.common;

import com.c3l2.persome.config.error.ErrorCode;
import lombok.*;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class ApiResponse<T> {
    private String message;
    private T data;

    public static <T> ResponseEntity<ApiResponse<T>> ok(String message, T data) {
        return ResponseEntity.ok(ApiResponse.<T>builder()
                .message(message)
                .data(data)
                .build());
    }

    public static <T> ResponseEntity<ApiResponse<T>> error(String message, T data, HttpStatus status) {
        return ResponseEntity.status(status)
                .body(ApiResponse.<T>builder()
                        .message(message)
                        .data(data)
                        .build());
    }

    /**
     * 실패 응답 생성 (메시지만 포함)
     * @param message 에러 메시지
     * @return BAD_REQUEST 상태의 실패 응답
     */
    public static <T> ResponseEntity<ApiResponse<T>> fail(String message) {
        return ResponseEntity.badRequest()
                .body(ApiResponse.<T>builder()
                        .message(message)
                        .data(null)
                        .build());
    }

    /**
     * 실패 응답 생성 (에러코드 포함)
     * @param message 에러 메시지
     * @param errorCode 에러 코드
     * @return 에러코드에 맞는 HTTP 상태의 실패 응답
     */
    public static <T> ResponseEntity<ApiResponse<T>> fail(String message, ErrorCode errorCode) {
        return ResponseEntity.status(errorCode.getHttpStatus())
                .body(ApiResponse.<T>builder()
                        .message(message)
                        .data(null)
                        .build());
    }

}

