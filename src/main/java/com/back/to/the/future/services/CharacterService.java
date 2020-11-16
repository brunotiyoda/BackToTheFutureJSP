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
        ResultSet resultSet = sqlQuery();

        List<Character> characters = buildCharacter(resultSet);

        return buildResponse(characters);
    }

    private List<CharacterResponseDTO> buildResponse(List<Character> characters) {
        List<CharacterResponseDTO> characterResponseDTOS = new ArrayList<>();
        characters.forEach(
                character -> {
                    CharacterResponseDTO characterResponseDTO = new CharacterResponseDTO();
                    characterResponseDTO.setId(character.getId());
                    characterResponseDTO.setName(character.getName());
                    characterResponseDTO.setDescription(character.getDescription());
                    characterResponseDTO.setCuriosities(character.getCuriosities());
                    characterResponseDTO.setPhotoBase64(character.getPhoto().getPath());
                    characterResponseDTOS.add(characterResponseDTO);
                }
        );
        return characterResponseDTOS;
    }

    private List<Character> buildCharacter(ResultSet resultSet) throws SQLException {
        List<Character> characters = new ArrayList<>();
        while (resultSet.next()) {
            Character character = new Character(
                    resultSet.getLong("CHARACTER_ID"),
                    resultSet.getString("NAME"),
                    resultSet.getString("DESCRIPTION"),
                    resultSet.getString("CURIOSITIES"),
                    new Photo(resultSet.getString("IMGBASE64"))
            );
            characters.add(character);
        }
        return characters;
    }

    private ResultSet sqlQuery() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();

        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " +
                "TB_CHARACTERS " +
                "INNER JOIN TB_PHOTOS ON TB_CHARACTERS.PHOTOS = TB_PHOTOS.PHOTOS_ID " +
                "ORDER BY TB_CHARACTERS.CHARACTER_ID";
        statement.executeQuery(sql);
        return statement.getResultSet();
    }

}
