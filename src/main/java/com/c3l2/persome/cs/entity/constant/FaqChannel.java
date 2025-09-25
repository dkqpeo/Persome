package com.c3l2.persome.cs.entity.constant;

public enum FaqChannel {
    ONLINE("온라인몰"),
    STORE("매장");

    private final String displayName;

    FaqChannel(String displayName) {
        this.displayName = displayName;
    }

    public String getDisplayName() {
        return displayName;
    }
}
