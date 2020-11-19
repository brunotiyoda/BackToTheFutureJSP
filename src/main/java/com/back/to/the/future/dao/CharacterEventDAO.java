package com.back.to.the.future.dao;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.configs.ConnectionFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CharacterEventDAO {
    public List<String> characterIntoEvents(String eventId) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<String> characters = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM TB_CHARACTERS\n" +
                "WHERE CHARACTER_ID IN (\n" +
                "    SELECT ID_CHARACTER\n" +
                "    FROM TB_CHARACTERS_ON_EVENTS\n" +
                "    WHERE ID_EVENT = " + eventId +
                ")";
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();
        while (rs.next()) {
            Character character = new Character();
            character.setName(rs.getString("NAME"));
            characters.add(character.getName());
        }
        connection.close();
        return characters;
    }
}
