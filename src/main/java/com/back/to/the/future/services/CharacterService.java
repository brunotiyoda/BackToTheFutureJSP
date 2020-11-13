package com.back.to.the.future.services;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.beans.Photo;

import java.util.ArrayList;
import java.util.List;

public class CharacterService {

    public List<Character> listOfCharacters() {
        Photo martyPhoto = new Photo();
        martyPhoto.setId(1L);
        martyPhoto.setPath("");
        martyPhoto.setDescriptionOld("old");

        List<Photo> photos = new ArrayList<>();
        photos.add(martyPhoto);

        Character marty = new Character();
        marty.setName("Marty McFly");
        marty.setPhotos(photos);

        List<Character> characters = new ArrayList<>();
        characters.add(marty);

        return characters;
    }

}
