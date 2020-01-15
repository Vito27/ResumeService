package com.vito.model;

public enum SectionType {
    OBJECTIVE("Objective"),
    PERSONAL("Personal"),
    ACHIEVEMENT("Achievement"),
    QUALIFICATIONS("Qualification"),
    EXPERIENCE("Experience"),
    EDUCATION("Education");

    private String title;

    SectionType(String title) {
        this.title = title;
    }

    public String getTitle() {
        return title;
    }
}