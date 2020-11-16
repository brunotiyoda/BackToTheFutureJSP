package com.back.to.the.future.beans;

public class Character {

    private Long id;
    private String name;
    private String description;
    private String curiosities;
    private Photo photo;

    public Character() {
    }

    public Character(Long id, String name, String description, String curiosities, Photo photo) {
        this.id = id;
        this.name = name;
        this.description = description;
        this.curiosities = curiosities;
        this.photo = photo;
    }

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

    public Photo getPhoto() {
        return photo;
    }

    public void setPhoto(Photo photo) {
        this.photo = photo;
    }
}
