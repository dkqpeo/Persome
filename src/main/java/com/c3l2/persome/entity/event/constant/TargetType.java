package com.c3l2.persome.entity.event.constant;

public enum TargetType {

    ALL, PRODUCT, CATEGORY, BRAND;


    public static TargetType of(String targettype) {
        return TargetType.valueOf(targettype);
    }
    }
