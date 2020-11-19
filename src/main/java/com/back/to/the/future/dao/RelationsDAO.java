package com.back.to.the.future.dao;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.beans.Events;
import com.back.to.the.future.beans.Relation;
import com.back.to.the.future.configs.ConnectionFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;

public class RelationsDAO {

    private final CharacterDAO characterEventDAO = new CharacterDAO();
    private final EventDAO eventDAO = new EventDAO();

    public Relation relation(int characterOne, int characterTwo) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM TB_RELATION\n" +
                "WHERE CHARACTERONE = " + characterOne +
                "  AND CHARACTERTWO = " + characterTwo;
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();

        Relation relation = new Relation();
        while (rs.next()) {
            relation.setId(rs.getLong("RELATION_ID"));
            relation.setCharacterOne(new Character(rs.getString("CHARACTERONE")));
            relation.setCharacterTwo(new Character(rs.getString("CHARACTERTWO")));
            relation.setDescription(rs.getString("DESCRIPTION"));

            List<Events> eventsOnRelationOne = eventDAO.eventsOnRelationOne(relation.getId());
            List<Events> eventsOnRelationTwo = eventDAO.eventsOnRelationTwo(relation.getId());

            relation.setEventsTimelineOne(eventsOnRelationOne);
            relation.setEventsTimeLineTwo(eventsOnRelationTwo);

            List<Character> characters =
                    characterEventDAO.getCharacters(relation.getCharacterOne().getId(), relation.getCharacterTwo().getId());

            relation.setCharacterOne(characters.get(0));
            relation.setCharacterTwo(characters.get(1));

        }

        connection.close();

        return relation;
    }
}
