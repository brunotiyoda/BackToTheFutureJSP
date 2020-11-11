package com.back.to.the.future.beans;

import java.time.LocalDateTime;
import java.util.List;

public class Events {

    private Long id;
    private String title;
    private String link;
    private String description;
    private List<Character> characters;
    private LocalDateTime dateOfEvents;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public List<Character> getCharacters() {
        return characters;
    }

    public void setCharacters(List<Character> characters) {
        this.characters = characters;
    }

    public LocalDateTime getDateOfEvents() {
        return dateOfEvents;
    }

    public void setDateOfEvents(LocalDateTime dateOfEvents) {
        this.dateOfEvents = dateOfEvents;
    }
}
