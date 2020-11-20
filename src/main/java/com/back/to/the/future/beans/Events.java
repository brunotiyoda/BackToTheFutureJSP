package com.back.to.the.future.beans;

import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class Events {

    private Long id;
    private String title;
    private String description;
    private List<Character> characters;
    private LocalDateTime dateOfEvents;
    private int timeline;

    public Events() {
    }

    public Events(String title,
                  String description,
                  List<Character> characters,
                  LocalDateTime dateOfEvents) {
        this.title = title;
        this.description = description;
        this.characters = characters;
        this.dateOfEvents = dateOfEvents;
    }

    public Events(String title,
                  String description,
                  String characters,
                  String dateOfEvents) {
        this.title = title;
        this.description = description;
        this.characters = toCharacter(characters);
        this.dateOfEvents = toLocalDateTime(dateOfEvents);
    }

    public Events(String title,
                  String description,
                  String characters,
                  String dateOfEvents,
                  int timeline) {
        this.title = title;
        this.description = description;
        this.characters = toCharacter(characters);
        this.dateOfEvents = toLocalDateTime(dateOfEvents);
        this.timeline = timeline;
    }

    private List<Character> toCharacter(String character) {
        List<Character> characters = new ArrayList<>();
        if (Objects.isNull(character)) {
            characters.add(new Character());
            return characters;
        }
        characters.add(new Character(character));
        return characters;
    }

    private LocalDateTime toLocalDateTime(String dateOfEvents) {
        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S");
        return LocalDateTime.parse(dateOfEvents, df);
    }

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

    public int getTimeline() {
        return timeline;
    }

    public void setTimeline(int timeline) {
        this.timeline = timeline;
    }
}
