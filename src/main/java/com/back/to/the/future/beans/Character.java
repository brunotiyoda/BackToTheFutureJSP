package com.back.to.the.future.beans;

import java.util.List;

public class Character {

    private Long id;
    private String name;
    private String description;
    private String curiosities;
    private List<com.back.to.the.future.beans.Photo> photos;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getCuriosities() {
        return curiosities;
    }

    public void setCuriosities(String curiosities) {
        this.curiosities = curiosities;
    }

    public List<com.back.to.the.future.beans.Photo> getPhotos() {
        return photos;
    }

    public void setPhotos(List<com.back.to.the.future.beans.Photo> photos) {
        this.photos = photos;
    }
}
