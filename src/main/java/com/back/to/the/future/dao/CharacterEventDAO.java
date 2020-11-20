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
                "FROM T_DISRUPT_CHARACTERS\n" +
                "WHERE ID_CHARACTER IN (\n" +
                "    SELECT ID_CHARACTER\n" +
                "    FROM T_DISRUPT_CHARAC_ON_EVENT\n" +
                "    WHERE ID_EVENT = " + eventId + ")";
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();
        while (rs.next()) {
            Character character = new Character();
            character.setName(rs.getString("NM_NAME"));
            characters.add(character.getName());
        }
        connection.close();
        return characters;
    }
}
