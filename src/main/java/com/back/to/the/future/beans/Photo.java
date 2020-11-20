package com.back.to.the.future.beans;

public class Photo {

    private Long id;
    private String path;

    public Photo() {
    }

    public Photo(String imgbase64) {
        this.path = imgbase64;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

}
