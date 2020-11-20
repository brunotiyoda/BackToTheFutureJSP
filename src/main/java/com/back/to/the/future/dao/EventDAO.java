package com.back.to.the.future.dao;

import com.back.to.the.future.beans.Events;
import com.back.to.the.future.configs.ConnectionFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EventDAO {

    public List<Events> eventsOnRelationOne(Long relation) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineOne = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM T_DISRUPT_EVENTS\n" +
                "WHERE ID_EVENT IN (\n" +
                "    SELECT ID_EVENT\n" +
                "    FROM T_DISRUPT_EVENTS_ON_RELATION\n" +
                "    WHERE ID_RELATION IN (" + relation + ")\n" +
                ")\n" +
                "  AND NR_TIMELINE = 1\n" +
                "ORDER BY ID_EVENT";
        connection.close();
        return buildEventOnRelation(eventsTimeLineOne, statement, sql);
    }

    public List<Events> eventsOnRelationTwo(Long relation) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineTwo = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM T_DISRUPT_EVENTS\n" +
                "WHERE ID_EVENT IN (\n" +
                "    SELECT ID_EVENT\n" +
                "    FROM T_DISRUPT_EVENTS_ON_RELATION\n" +
                "    WHERE ID_RELATION IN (" + relation + ")\n" +
                ")\n" +
                "  AND NR_TIMELINE = 2\n" +
                "ORDER BY ID_EVENT";
        connection.close();
        return buildEventOnRelation(eventsTimeLineTwo, statement, sql);
    }

    private List<Events> buildEventOnRelation(List<Events> eventsTimeLineTwo,
                                              Statement statement,
                                              String sql) throws SQLException {
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();
        while (rs.next()) {
            Events event = new Events();
            event.setTitle(rs.getString("NM_TITLE"));
            event.setDescription(rs.getString("DS_DESCRIPTION"));
            eventsTimeLineTwo.add(event);
        }
        return eventsTimeLineTwo;
    }

    public List<Events> allEventsTimelineOne() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineOne = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM T_DISRUPT_EVENTS\n" +
                "WHERE NR_TIMELINE = 1\n" +
                "ORDER BY ID_EVENT";
        return buildEventOnTimeline(eventsTimeLineOne, statement, sql);
    }

    public List<Events> allEventsTimelineTwo() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineOne = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM T_DISRUPT_EVENTS\n" +
                "WHERE NR_TIMELINE = 2\n" +
                "ORDER BY ID_EVENT";
        return buildEventOnTimeline(eventsTimeLineOne, statement, sql);
    }

    private List<Events> buildEventOnTimeline(List<Events> eventsTimeLineOne,
                                              Statement statement,
                                              String sql) throws SQLException {
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();
        while (rs.next()) {
            Events event = new Events();
            event.setId(rs.getLong("ID_EVENT"));
            event.setTitle(rs.getString("NM_TITLE"));
            event.setDescription(rs.getString("DS_DESCRIPTION"));
            eventsTimeLineOne.add(event);
        }
        return eventsTimeLineOne;
    }
}
