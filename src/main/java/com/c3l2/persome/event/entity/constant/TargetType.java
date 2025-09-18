package com.c3l2.persome.event.entity.constant;

public enum TargetType {

    ALL, PRODUCT, CATEGORY, BRAND;


    public static TargetType of(String targettype) {
        return TargetType.valueOf(targettype);
    }
    }
