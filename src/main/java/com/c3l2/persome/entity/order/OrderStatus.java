package com.c3l2.persome.entity.order;

public enum OrderStatus {
    PENDING,    //결제대기
    PAID,       //결제완료
    PROCESSING, //준비중
    SHIPPING,   //배송중
    DELIVERED,  //배송완료
    CANCELED,   //주문취소
    REFUNDED,    //환불완료
    COMPLETED    //주문완료
}
