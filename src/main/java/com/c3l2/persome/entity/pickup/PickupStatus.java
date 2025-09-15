package com.c3l2.persome.entity.pickup;

public enum PickupStatus {
    PREPARING,  //준비중
    WAITING,    //수령 대기중
    PICKED,     //수령 완료
    EXPIRED,    //만료됨
    CANCELED    //취소됨
}