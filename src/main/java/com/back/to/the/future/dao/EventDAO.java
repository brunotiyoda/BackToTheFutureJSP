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
    public List<Events> AllEventsTimelineOne() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();
        List<Events> eventsTimeLineOne = new ArrayList<>();
        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM " +
                "TB_EVENTS " +
                "WHERE TIMELINE = 1 ORDER BY EVENTS_ID";
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
