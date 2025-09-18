package com.c3l2.persome.config.error.exceprion;

import com.c3l2.persome.common.ApiResponse;
import com.c3l2.persome.config.error.ErrorResult;
import lombok.extern.slf4j.Slf4j;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.RestControllerAdvice;

@Slf4j
@RestControllerAdvice(basePackages = "")
public class ExceptionAdvice {

    // Business Exception 예외처리
    @ExceptionHandler(BusinessException.class)
    public ResponseEntity<ApiResponse<ErrorResult>> handleBusinessException(BusinessException e) {
        log.info("business exception: {}", e.getMessage());
        ErrorResult errorResult = ErrorResult.of(e.getErrorCode().getErrorCode(), e.getMessage());
        return ApiResponse.error(e.getMessage(), errorResult, e.getErrorCode().getHttpStatus());
    }

    // Controller Exception 예외처리
    @ExceptionHandler(ControllerException.class)
    public ResponseEntity<ApiResponse<ErrorResult>> handleControllerException(ControllerException e) {
        log.info("controller error handler");
        ErrorResult errorResult = ErrorResult.of(e.getErrorCode().getErrorCode(), e.getMessage());
        return ApiResponse.error(e.getMessage(), errorResult, e.getErrorCode().getHttpStatus());
    }

    // Runtime Exception 예외처리
    @ExceptionHandler(RuntimeException.class)
    public ResponseEntity<ApiResponse<ErrorResult>> runtimeExceptionHandler(RuntimeException e) {
        log.info("runtime error handler");
        ErrorResult errorResult = ErrorResult.of("E-000", e.getMessage() + "\n 서버 에러. 담당자에게 문의 바랍니다.");
        return ApiResponse.error(e.getMessage(), errorResult, HttpStatus.INTERNAL_SERVER_ERROR);
    }
}
