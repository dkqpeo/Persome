package com.c3l2.persome.config.error.exceprion;

import com.c3l2.persome.config.error.ErrorCode;
import lombok.Getter;

@Getter
public class BusinessException extends RuntimeException {

    public ErrorCode errorCode;

    public BusinessException(ErrorCode errorCode) {
        super(errorCode.getMessage());
        this.errorCode = errorCode;
    }

    public BusinessException(String message, Throwable cause, ErrorCode errorCode) {
        super(message, cause);
        this.errorCode = errorCode;
    }
}
