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
        String sql = "SELECT *\n" +
                "FROM T_DISRUPT_CHARACTERS\n" +
                "         INNER JOIN T_DISRUPT_PHOTOS ON T_DISRUPT_CHARACTERS.ID_PHOTO = T_DISRUPT_PHOTOS.ID_PHOTO\n" +
                "ORDER BY T_DISRUPT_CHARACTERS.ID_CHARACTER";
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
            Character character = new Character();
            character.setName(resultSet.getString("NM_NAME"));
            character.setPhoto(new Photo(resultSet.getString("IMGBASE64")));
            characters.add(character);
        }
        connection.close();
        return characters;
    }


    public List<Character> getCharacters(Long idRelacao) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM T_DISRUPT_CHARACTERS\n" +
                "INNER JOIN T_DISRUPT_PHOTOS TDP\n" +
                "                    ON T_DISRUPT_CHARACTERS.ID_PHOTO = TDP.ID_PHOTO\n" +
                "WHERE ID_CHARACTER IN (\n" +
                "    SELECT ID_CHARACTER\n" +
                "    FROM T_DISRUPT_CHARAC_ON_RELATION\n" +
                "    WHERE ID_RELATION =" + idRelacao + ")";

        statement.executeQuery(sql);
        ResultSet resultSet = statement.getResultSet();
        List<Character> characters = new ArrayList<>();
        while (resultSet.next()) {
            Character character = new Character();
            character.setName(resultSet.getString("NM_NAME"));
            character.setPhoto(new Photo(resultSet.getString("IMGBASE64")));
            characters.add(character);
        }
        connection.close();
        return characters;
    }
}
