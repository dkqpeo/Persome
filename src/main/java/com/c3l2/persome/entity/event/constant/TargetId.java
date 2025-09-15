package com.c3l2.persome.entity.event.constant;

public enum TargetId {

    PRODUCT, BRAND, CATEGORY;


    public static TargetId of(String targetid) {
        return TargetId.valueOf(targetid);
    }
    }
