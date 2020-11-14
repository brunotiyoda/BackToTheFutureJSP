package com.back.to.the.future.beans;

public class Photo {

    private Long id;
    private String path;
    private String year;
    private String descriptionOld;
    private String descriptionActual;
    private String imgBase64;

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

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }

    public String getDescriptionOld() {
        return descriptionOld;
    }

    public void setDescriptionOld(String descriptionOld) {
        this.descriptionOld = descriptionOld;
    }

    public String getDescriptionActual() {
        return descriptionActual;
    }

    public void setDescriptionActual(String descriptionActual) {
        this.descriptionActual = descriptionActual;
    }

    public String getImgBase64() {
        return imgBase64;
    }

    public void setImgBase64(String imgBase64) {
        this.imgBase64 = imgBase64;
    }
}
