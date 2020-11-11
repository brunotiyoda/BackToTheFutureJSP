package com.back.to.the.future.beans;

import java.util.List;

public class Relation {

    private Long id;
    private List<Scenes> scenes;
    private List<Character> characters; // max 2
    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Scenes> getScenes() {
        return scenes;
    }

    public void setScenes(List<Scenes> scenes) {
        this.scenes = scenes;
    }

    public List<Character> getCharacters() {
        return characters;
    }

    public void setCharacters(List<Character> characters) {
        this.characters = characters;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
