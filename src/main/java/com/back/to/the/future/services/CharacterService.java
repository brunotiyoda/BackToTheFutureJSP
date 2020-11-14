package com.back.to.the.future.services;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.beans.Photo;
import com.back.to.the.future.configs.ConnectionFactory;
import com.back.to.the.future.controllers.dtos.CharacterResponseDTO;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CharacterService {

    public List<CharacterResponseDTO> listOfCharacters() throws IOException, SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();

        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM\n" +
                "TB_CHARACTERS\n" +
                "INNER JOIN TB_PHOTOS ON TB_CHARACTERS.PHOTOS = TB_PHOTOS.PHOTOS_ID";
        statement.executeQuery(sql);
        ResultSet resultSet = statement.getResultSet();

        List<Photo> photos = new ArrayList<>();
        List<Character> characters = new ArrayList<>();
        if (resultSet.next()) {
            Photo photo = new Photo(resultSet.getString("IMGBASE64"));
            photos.add(photo);
            Character character = new Character(
                    resultSet.getLong("CHARACTER_ID"),
                    resultSet.getString("NAME"),
                    resultSet.getString("DESCRIPTION"),
                    resultSet.getString("CURIOSITIES"),
                    photos
            );

            characters.add(character);
        }

        List<CharacterResponseDTO> characterResponseDTOS = new ArrayList<>();
        characters.forEach(
                character -> {
                    CharacterResponseDTO characterResponseDTO = new CharacterResponseDTO();
                    characterResponseDTO.setId(character.getId());
                    characterResponseDTO.setName(character.getName());
                    characterResponseDTO.setDescription(character.getDescription());
                    characterResponseDTO.setCuriosities(character.getCuriosities());
                    characterResponseDTO.setPhotoBase64(character.getPhotos().stream()
                            .map(Photo::getPath).findFirst().orElse(""));
                    characterResponseDTOS.add(characterResponseDTO);
                }
        );

        return characterResponseDTOS;
    }

}
