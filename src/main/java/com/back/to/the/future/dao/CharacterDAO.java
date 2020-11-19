package com.back.to.the.future.dao;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.beans.Photo;
import com.back.to.the.future.configs.ConnectionFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CharacterDAO {

    public ResultSet getCharacters() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();

        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " +
                "TB_CHARACTERS " +
                "INNER JOIN TB_PHOTOS ON TB_CHARACTERS.PHOTOS = TB_PHOTOS.PHOTOS_ID " +
                "ORDER BY TB_CHARACTERS.CHARACTER_ID";
        statement.executeQuery(sql);
        return statement.getResultSet();
    }

    public List<Character> getCharacters(Long characterOne, Long characterTwo) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM TB_CHARACTERS\n" +
                "         INNER JOIN TB_PHOTOS\n" +
                "                    ON TB_CHARACTERS.PHOTOS = TB_PHOTOS.PHOTOS_ID\n" +
                "    WHERE CHARACTER_ID IN (" + characterOne + "," + characterTwo + ")";

        statement.executeQuery(sql);
        ResultSet resultSet = statement.getResultSet();
        List<Character> characters = new ArrayList<>();
        while (resultSet.next()) {
            Character character = new Character(
                    resultSet.getString("NAME"),
                    new Photo(resultSet.getString("IMGBASE64"))
            );
            characters.add(character);
        }
        return characters;
    }
}
