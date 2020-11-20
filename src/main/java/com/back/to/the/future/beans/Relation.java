package com.back.to.the.future.beans;

import java.util.List;

public class Relation {

    private Long id;
    private List<Events> eventsTimelineOne;
    private List<Events> eventsTimeLineTwo;
    private List<Character> characters;
    private Character characterOne;
    private Character characterTwo;
    private String description;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public List<Events> getEventsTimelineOne() {
        return eventsTimelineOne;
    }

    public void setEventsTimelineOne(List<Events> eventsTimelineOne) {
        this.eventsTimelineOne = eventsTimelineOne;
    }

    public List<Events> getEventsTimeLineTwo() {
        return eventsTimeLineTwo;
    }

    public void setEventsTimeLineTwo(List<Events> eventsTimeLineTwo) {
        this.eventsTimeLineTwo = eventsTimeLineTwo;
    }

    public List<Character> getCharacters() {
        return characters;
    }

    public void setCharacters(List<Character> characters) {
        this.characters = characters;
    }

    public Character getCharacterOne() {
        return characterOne;
    }

    public void setCharacterOne(Character characterOne) {
        this.characterOne = characterOne;
    }

    public Character getCharacterTwo() {
        return characterTwo;
    }

    public void setCharacterTwo(Character characterTwo) {
        this.characterTwo = characterTwo;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
