package com.back.to.the.future.services;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.beans.Photo;
import com.back.to.the.future.controllers.dtos.CharacterResponseDTO;
import com.back.to.the.future.dao.CharacterDAO;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CharacterService {

    private final CharacterDAO characterDAO = new CharacterDAO();

    public List<CharacterResponseDTO> listOfCharacters() throws IOException, SQLException, ClassNotFoundException {
        ResultSet resultSet = characterDAO.getCharacters();

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
            Character character = new Character();
            character.setId(resultSet.getLong("ID_CHARACTER"));
            character.setName(resultSet.getString("NM_NAME"));
            character.setDescription(resultSet.getString("DS_DESCRIPTION"));
            character.setPhoto(new Photo(resultSet.getString("IMGBASE64")));

            characters.add(character);
        }
        return characters;
    }


}
