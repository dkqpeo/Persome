package com.c3l2.persome.entity.review.constant;

public enum MediaType {

    IMAGE, VEDIO;

    public static MediaType of(String mediaType) {
        return MediaType.valueOf(mediaType);
    }
}
