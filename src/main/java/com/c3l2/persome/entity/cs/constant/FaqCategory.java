package com.c3l2.persome.entity.cs.constant;

public enum FaqCategory {

    MEMBER_MEMBERSHIP("회원/멤버십"),
    ORDER_PAYMENT("주문/결제"),
    DELIVERY("배송문의"),
    CANCEL_EXCHANGE_REFUND("취소/교환/환불"),
    EVENT("이벤트");

    private final String displayname;

    FaqCategory(String displayname){
        this.displayname = displayname;
    }

    public String getDisplayname() {
        return displayname;
    }
}
