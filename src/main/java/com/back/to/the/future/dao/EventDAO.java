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
                "FROM TB_EVENTS\n" +
                "WHERE EVENTS_ID IN (\n" +
                "    SELECT EVENTS_ID\n" +
                "    FROM TB_EVENTS_ON_RELATION\n" +
                "    WHERE RELATION_ID IN (" + relation + ")\n" +
                ")\n" +
                "  AND TIMELINE = 1\n" +
                "ORDER BY EVENTS_ID\n";
        return buildEventOnRelation(eventsTimeLineOne, statement, sql);
    }

    public List<Events> eventsOnRelationTwo(Long relation) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineTwo = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT *\n" +
                "FROM TB_EVENTS\n" +
                "WHERE EVENTS_ID IN (\n" +
                "    SELECT EVENTS_ID\n" +
                "    FROM TB_EVENTS_ON_RELATION\n" +
                "    WHERE RELATION_ID IN (" + relation + ")\n" +
                ")\n" +
                "  AND TIMELINE = 2\n" +
                "ORDER BY EVENTS_ID\n";
        return buildEventOnRelation(eventsTimeLineTwo, statement, sql);
    }

    private List<Events> buildEventOnRelation(List<Events> eventsTimeLineTwo,
                                              Statement statement,
                                              String sql) throws SQLException {
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();
        while (rs.next()) {
            Events event = new Events();
            event.setTitle(rs.getString("TITLE"));
            event.setDescription(rs.getString("DESCRIPTION"));
            eventsTimeLineTwo.add(event);
        }
        return eventsTimeLineTwo;
    }

    public List<Events> allEventsTimelineOne() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineOne = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " +
                "TB_EVENTS " +
                "WHERE TIMELINE = 1 ORDER BY EVENTS_ID";
        return buildEventOnTimeline(eventsTimeLineOne, statement, sql);
    }

    public List<Events> allEventsTimelineTwo() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineOne = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " +
                "TB_EVENTS " +
                "WHERE TIMELINE = 2 ORDER BY EVENTS_ID";
        return buildEventOnTimeline(eventsTimeLineOne, statement, sql);
    }

    private List<Events> buildEventOnTimeline(List<Events> eventsTimeLineOne,
                                              Statement statement,
                                              String sql) throws SQLException {
        statement.executeQuery(sql);
        ResultSet rs = statement.getResultSet();
        while (rs.next()) {
            Events event = new Events();
            event.setId(rs.getLong("EVENTS_ID"));
            event.setTitle(rs.getString("TITLE"));
            event.setDescription(rs.getString("DESCRIPTION"));
            event.setLink(rs.getString("LINK"));
            eventsTimeLineOne.add(event);
        }
        return eventsTimeLineOne;
    }
}
