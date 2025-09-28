package com.c3l2.persome.config.error;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public enum ErrorCode {

    // test
    TEST(HttpStatus.BAD_REQUEST, "001", "test error"),

    // 인증 && 인가
    TOKEN_EXPIRED(HttpStatus.UNAUTHORIZED, "A-001", "토큰이 만료되었습니다."),
    NOT_VALID_TOKEN(HttpStatus.UNAUTHORIZED, "A-002", "해당 토큰은 유효한 토큰이 아닙니다."),
    NOT_EXISTS_AUTHORIZATION(HttpStatus.UNAUTHORIZED, "A-003", "Authorization Header가 빈값입니다."),
    NOT_VALID_BEARER_GRANT_TYPE(HttpStatus.UNAUTHORIZED, "A-004", "인증 타입이 Bearer 타입이 아닙니다."),
    REFRESH_TOKEN_NOT_FOUND(HttpStatus.UNAUTHORIZED, "A-005", "해당 refresh token은 존재하지 않습니다."),
    REFRESH_TOKEN_EXPIRED(HttpStatus.UNAUTHORIZED, "A-006", "해당 refresh token은 만료되었습니다."),
    NOT_ACCESS_TOKEN_TYPE(HttpStatus.UNAUTHORIZED, "A-007", "해당 토큰은 access token이 아닙니다."),
    FORBIDDEN_ADMIN(HttpStatus.FORBIDDEN, "A-008", "관리자 Role이 아닙니다."),
    NOT_EQUAL_PASSWORD(HttpStatus.UNAUTHORIZED, "A-009", "Password가 일치하지 않습니다."),
    NOT_EQUAL_CODE(HttpStatus.UNAUTHORIZED, "A-010", "Email Code가 일치하지 않습니다."),
    NOT_VALID_USER(HttpStatus.BAD_REQUEST, "A-011", "해당 회원에게 접근 권한이 없습니다."),
    NOT_LOGGED_IN(HttpStatus.UNAUTHORIZED, "A-012", "로그인이 필요합니다."),
    INVALID_LOGIN_CREDENTIALS(HttpStatus.UNAUTHORIZED, "A-013", "아이디 또는 비밀번호가 일치하지 않습니다."),

    // 회원
    INVALID_USER_TYPE(HttpStatus.BAD_REQUEST, "M-001", "잘못된 회원 타입입니다. (memberType : KAKAO)"),
    ALREADY_REGISTERED_USER(HttpStatus.BAD_REQUEST, "M-002", "이미 가입된 회원입니다."),
    USER_NOT_EXISTS(HttpStatus.BAD_REQUEST, "M-003", "해당 회원은 존재하지 않습니다."),
    NOT_EXISTS_EMAIL(HttpStatus.BAD_REQUEST, "M-004", "일치하는 Email 정보가 존재하지 않습니다."),
    ALREADY_EXISTS__EMAIL(HttpStatus.BAD_REQUEST, "M-005", "이미 존재하는 Email 입니다."),
    NOT_EXISTS_USER(HttpStatus.BAD_REQUEST, "M-006", "회원정보가 일치하지 않습니다."),
    USERNAME_IS_NULL(HttpStatus.BAD_REQUEST, "M-007", "username이 null 입니다."),
    NOT_ADMIN_USER(HttpStatus.BAD_REQUEST, "M-008", "Admin User가 아닙니다."),
    WITHDRAWN_USER(HttpStatus.BAD_REQUEST, "M-009", "탈퇴한 회원입니다."),
    DORMANT_USER(HttpStatus.BAD_REQUEST, "M-010", "휴면 계정입니다."),
    USER_NOTIFICATION_NOT_FOUND(HttpStatus.BAD_REQUEST, "M-011", "알림 설정이 존재하지 않습니다."),
    DEFAULT_MEMBERSHIP_NOT_FOUND(HttpStatus.INTERNAL_SERVER_ERROR, "M-012", "기본 멤버십 레벨(BABY)이 존재하지 않습니다."),
    INVALID_MEMBERSHIP_LEVEL(HttpStatus.BAD_REQUEST, "M-013", "유효하지 않은 멤버십 등급입니다."),
    INVALID_USER_STATUS(HttpStatus.BAD_REQUEST, "M-014", "유효하지 않은 회원 상태입니다."),

    // 브랜드
    BRAND_NOT_FOUND(HttpStatus.BAD_REQUEST, "B-001", "해당 브랜드를 찾을 수 없습니다."),

    // 주문
    ORDER_NOT_FOUND(HttpStatus.BAD_REQUEST, "O-001", "해당 주문을 찾을 수 없습니다."),
    ORDER_USER_MISMATCH(HttpStatus.FORBIDDEN, "O-002", "본인의 주문만 취소할 수 있습니다."),
    ORDER_CANNOT_CANCEL(HttpStatus.BAD_REQUEST, "O-003", "현재 상태에서는 주문을 취소할 수 없습니다."),
    ORDER_ITEM_NOT_FOUND(HttpStatus.BAD_REQUEST, "O-004", "주문 상품을 찾을 수 없습니다."),
    ORDER_COUPON_INVALID(HttpStatus.BAD_REQUEST, "O-005", "쿠폰 적용에 실패했습니다."),
    ORDER_POINT_USE_FAILED(HttpStatus.BAD_REQUEST, "O-006", "포인트 사용에 실패했습니다."),
    ORDER_POINT_RESTORE_FAILED(HttpStatus.BAD_REQUEST, "O-007", "포인트 복구에 실패했습니다."),
    ORDER_PAYMENT_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "O-008", "결제 처리에 실패했습니다."),
    ORDER_ALREADY_CANCELED(HttpStatus.BAD_REQUEST, "O-009", "이미 취소된 주문입니다."),
    ORDER_ALREADY_COMPLETED(HttpStatus.BAD_REQUEST, "O-010", "이미 완료된 주문입니다."),
    ORDER_SHIPPING_INFO_MISSING(HttpStatus.BAD_REQUEST, "O-011", "배송 정보가 누락되었습니다."),

    // 카트
    CART_ITEM_NOT_FOUND(HttpStatus.BAD_REQUEST, "C-001", "장바구니에서 헤당 상품을 찾을 수 없습니다."),

    // 프로모션
    PROMOTION_NOT_FOUND(HttpStatus.BAD_REQUEST, "R-001", "해당 프로모션을 찾을 수 없습니다."),
    PROMOTION_NOT_ACTIVE(HttpStatus.BAD_REQUEST, "R-002", "현재 활성화된 프로모션이 아닙니다."),
    PROMOTION_EXPIRED(HttpStatus.BAD_REQUEST, "R-003", "이미 종료된 프로모션입니다."),
    PROMOTION_NOT_STARTED(HttpStatus.BAD_REQUEST, "R-004", "아직 시작되지 않은 프로모션입니다."),
    PROMOTION_TARGET_NOT_FOUND(HttpStatus.BAD_REQUEST, "R-005", "해당 상품에 적용 가능한 프로모션이 없습니다."),
    PROMOTION_APPLY_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "R-006", "프로모션 적용에 실패했습니다."),
    PROMOTION_UPDATE_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "R-007", "프로모션 수정에 실패했습니다."),
    PROMOTION_STATUS_INVALID(HttpStatus.BAD_REQUEST, "R-008", "유효하지 않은 프로모션 상태입니다."),
    PROMOTION_DISCOUNT_TYPE_INVALID(HttpStatus.BAD_REQUEST, "R-009", "유효하지 않은 할인 유형입니다."),
    PROMOTION_TARGET_TYPE_INVALID(HttpStatus.BAD_REQUEST, "R-010", "유효하지 않은 프로모션 대상 유형입니다."),

    // 이벤트
    EVENT_NOT_FOUND(HttpStatus.BAD_REQUEST, "E-001", "해당 이벤트를 찾을 수 없습니다."),
    EVENT_INACTIVE(HttpStatus.BAD_REQUEST, "E-002", "현재 진행 중인 이벤트가 아닙니다."),
    EVENT_EXPIRED(HttpStatus.BAD_REQUEST, "E-003", "종료된 이벤트입니다."),
    EVENT_NOT_STARTED(HttpStatus.BAD_REQUEST, "E-004", "아직 시작되지 않은 이벤트입니다."),
    EVENT_COUPON_NOT_FOUND(HttpStatus.BAD_REQUEST, "E-006", "이벤트에 해당하는 쿠폰이 없습니다."),
    EVENT_PROMOTION_NOT_FOUND(HttpStatus.BAD_REQUEST, "E-007", "해당 이벤트에 대한 프로모션이 존재하지 않습니다."),
    EVENT_STATUS_INVALID(HttpStatus.BAD_REQUEST, "E-008", "유효하지 않은 이벤트 상태입니다."),
    EVENT_UPDATE_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "E-009", "이벤트 수정에 실패했습니다."),

    // 쿠폰
    COUPON_NOT_FOUND(HttpStatus.BAD_REQUEST, "C-001", "해당 쿠폰을 찾을 수 없습니다."),
    USER_COUPON_NOT_FOUND(HttpStatus.BAD_REQUEST, "C-002", "해당 사용자 쿠폰을 찾을 수 없습니다."),
    COUPON_NOT_ACTIVE(HttpStatus.BAD_REQUEST, "C-003", "사용할 수 없는 쿠폰입니다."),
    COUPON_EXPIRED(HttpStatus.BAD_REQUEST, "C-004", "이미 만료된 쿠폰입니다."),
    COUPON_NOT_STARTED(HttpStatus.BAD_REQUEST, "C-005", "아직 시작되지 않은 쿠폰입니다."),
    COUPON_ISSUE_LIMIT_EXCEEDED(HttpStatus.BAD_REQUEST, "C-006", "쿠폰 발급 한도를 초과했습니다."),
    COUPON_ALREADY_ISSUED(HttpStatus.BAD_REQUEST, "C-007", "이미 발급받은 쿠폰입니다."),
    COUPON_MIN_ORDER_PRICE_NOT_MET(HttpStatus.BAD_REQUEST, "C-008", "쿠폰 적용을 위한 최소 주문 금액에 미달합니다."),
    COUPON_APPLY_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "C-009", "쿠폰 적용에 실패했습니다."),
    COUPON_RESTORE_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "C-010", "쿠폰 복구에 실패했습니다."),

    // 상품
    PRODUCT_NOT_FOUND(HttpStatus.BAD_REQUEST, "P-001", "해당 상품을 찾을 수 없습니다."),
    PRODUCT_OPTION_NOT_FOUND(HttpStatus.BAD_REQUEST, "P-002", "해당 상품 옵션을 찾을 수 없습니다."),
    PRODUCT_OUT_OF_STOCK(HttpStatus.BAD_REQUEST, "P-003", "상품 재고가 부족합니다."),
    PRODUCT_OPTION_INVALID(HttpStatus.BAD_REQUEST, "P-004", "잘못된 상품 옵션입니다."),
    PRODUCT_PRICE_MISMATCH(HttpStatus.BAD_REQUEST, "P-005", "상품 가격 정보가 올바르지 않습니다."),
    PRODUCT_ALREADY_SOLD_OUT(HttpStatus.BAD_REQUEST, "P-006", "이미 품절된 상품입니다."),
    PRODUCT_INACTIVE(HttpStatus.BAD_REQUEST, "P-007", "판매 중지된 상품입니다."),
    PRODUCT_CATEGORY_NOT_FOUND(HttpStatus.BAD_REQUEST, "P-008", "해당 상품 카테고리를 찾을 수 없습니다."),
    PRODUCT_IMAGE_NOT_FOUND(HttpStatus.BAD_REQUEST, "P-009", "상품 이미지를 찾을 수 없습니다."),
    PRODUCT_SAVE_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "P-010", "상품 저장에 실패했습니다."),
    PRODUCT_UPDATE_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "P-011", "상품 수정에 실패했습니다."),
    PRODUCT_DELETE_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "P-012", "상품 삭제에 실패했습니다."),
    PRODUCT_PRICE_NOT_FOUND(HttpStatus.BAD_REQUEST, "P-013", "상품 가격을 찾을 수 없습니다."),
    PRODUCT_STATUS_INVALID(HttpStatus.BAD_REQUEST, "P-014", "유효하지 않은 상품 상태입니다."),


    // 리뷰
    REVIEW_NOT_FOUND(HttpStatus.NOT_FOUND, "R-001", "해당 리뷰가 존재하지 않습니다."),
    REVIEW_MODIFY_FORBIDDEN(HttpStatus.FORBIDDEN, "R-002", "리뷰를 수정할 권한이 없습니다."),
    REVIEW_DELETE_FORBIDDEN(HttpStatus.FORBIDDEN, "R-003", "리뷰를 삭제할 권한이 없습니다."),

    // 위시리스트
    WISHLIST_ALREADY_EXISTS(HttpStatus.BAD_REQUEST, "W-001", "이미 위시리스트에 존재하는 상품입니다."),
    WISHLIST_NOT_FOUND(HttpStatus.BAD_REQUEST, "W-002", "위시리스트에 존재하지 않습니다."),
    WISHLIST_EMPTY(HttpStatus.BAD_REQUEST, "W-003", "위시리스트가 비어있습니다."),

    // 파일/서버
    SERVER_ERROR(HttpStatus.INTERNAL_SERVER_ERROR, "S-001", "서버 내부 오류가 발생했습니다."),
    FILE_UPLOAD_FAILED(HttpStatus.INTERNAL_SERVER_ERROR, "S-002", "파일 업로드에 실패했습니다.");

    private final HttpStatus httpStatus;
    private final String errorCode;
    private final String message;

    ErrorCode(HttpStatus httpStatus, String errorCode, String message) {
        this.httpStatus = httpStatus;
        this.errorCode = errorCode;
        this.message = message;
    }
}
