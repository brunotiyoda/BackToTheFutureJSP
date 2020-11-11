package com.back.to.the.future.beans;

public class Photo {

    private Long id;
    private String path;
    private String year;
    private String descriptionOld;
    private String descriptionActual;

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
}
