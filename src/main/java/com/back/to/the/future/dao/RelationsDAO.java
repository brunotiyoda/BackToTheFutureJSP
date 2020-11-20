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

    public Relation relation(int idRelation) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        Statement statement = connection.createStatement();
        String sql = "SELECT distinct T_DISRUPT_RELATION.DS_DESCRIPTION,\n" +
                "                T_DISRUPT_RELATION.ID_RELATION\n" +
                "FROM T_DISRUPT_RELATION\n" +
                "         INNER JOIN (\n" +
                "    SELECT DISTINCT ID_RELATION, ID_CHARACTER\n" +
                "    FROM T_DISRUPT_CHARAC_ON_RELATION\n" +
                ") T1 ON T1.ID_RELATION = T_DISRUPT_RELATION.ID_RELATION\n" +
                "WHERE T_DISRUPT_RELATION.ID_RELATION ="+ idRelation +
                "ORDER BY T_DISRUPT_RELATION.ID_RELATION";
        statement.executeQuery(sql);
        ResultSet resultSet = statement.getResultSet();

        Relation relation = new Relation();
        while (resultSet.next()) {
            relation.setId(resultSet.getLong("ID_RELATION"));
            relation.setDescription(resultSet.getString("DS_DESCRIPTION"));

            List<Events> eventsOnRelationOne = getEventsTimelineOne(relation);
            List<Events> eventsOnRelationTwo = getEventsTimelineTwo(relation);

            relation.setEventsTimelineOne(eventsOnRelationOne);
            relation.setEventsTimeLineTwo(eventsOnRelationTwo);

            List<Character> characters = characterEventDAO.getCharacters(relation.getId());

            relation.setCharacterOne(characters.get(0));
            relation.setCharacterTwo(characters.get(1));
        }

        connection.close();
        return relation;
    }

    private List<Events> getEventsTimelineTwo(Relation relation) throws SQLException, ClassNotFoundException {
        return eventDAO.eventsOnRelationTwo(relation.getId());
    }

    private List<Events> getEventsTimelineOne(Relation relation) throws SQLException, ClassNotFoundException {
        return eventDAO.eventsOnRelationOne(relation.getId());
    }
}
