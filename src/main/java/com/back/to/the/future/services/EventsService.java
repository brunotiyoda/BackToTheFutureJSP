package com.back.to.the.future.services;

import com.back.to.the.future.beans.Character;
import com.back.to.the.future.beans.Events;
import com.back.to.the.future.beans.Photo;
import com.back.to.the.future.configs.ConnectionFactory;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.List;

public class EventsService {

    public List<Events> searchByDateOfEventsAndHour(String dateOfEvent, String timeline) throws SQLException, ClassNotFoundException {
        ResultSet resultSet = sqlQueryByDateOfEventAndHour(dateOfEvent);

        return buildWithTimeline(resultSet);
    }

    private ResultSet sqlQueryByDateOfEventAndHour(String dateOfEvent) throws SQLException, ClassNotFoundException {
        String sql = "SELECT DISTINCT description, DATEOFEVENTS\n" +
                "FROM tb_events\n" +
                "WHERE tb_events.dateofevents = to_date('" + dateOfEvent + "', 'yyyy-mm-dd')";

        Connection connection = new ConnectionFactory().getConnection();

        Statement statement = connection.createStatement();
        return statement.executeQuery(sql);
    }

    public List<Events> listAllEvents() throws SQLException, ClassNotFoundException {
        ResultSet resultSet = sqlQueryListAllEvents();

        return buildWithTimeline(resultSet);
    }

    private ResultSet sqlQueryListAllEvents() throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();

        Statement statement = connection.createStatement();
        String sql = "SELECT * FROM TB_EVENTS TE\n" +
                "INNER JOIN TB_CHARACTERS TC\n" +
                "ON TE.CHARACTERS = TC.CHARACTER_ID";
        statement.executeQuery(sql);
        return statement.getResultSet();
    }

    public List<Events> searchByDateOfEvents(String dateOfEvent, String timeline) throws SQLException, ClassNotFoundException {
        ResultSet resultSet = sqlQueryByDateOfEvent(dateOfEvent);

        return buildWithTimeline(resultSet);
    }

    private ResultSet sqlQueryByDateOfEvent(String dateOfEvent) throws SQLException, ClassNotFoundException {
        Connection connection = new ConnectionFactory().getConnection();

        String sql = "SELECT DISTINCT description, DATEOFEVENTS\n" +
                "FROM tb_events\n" +
                "WHERE tb_events.dateofevents = to_date('" + dateOfEvent + "', 'yyyy-mm-dd')";

        Statement statement = connection.createStatement();
        statement.executeQuery(sql);
        return statement.getResultSet();
    }

    private List<Events> buildWithTimeline(ResultSet resultSet) throws SQLException {
        List<Events> events = new ArrayList<>();
        List<Character> characters = new ArrayList<>();
        while (resultSet.next()) {
            characters.add(new Character(
                    resultSet.getLong("CHARACTER_ID"),
                    resultSet.getString("NAME"),
                    resultSet.getString("DESCRIPTION"),
                    resultSet.getString("CURIOSITIES")
            ));

            events.add(new Events(
                    resultSet.getString("TITLE"),
                    resultSet.getString("LINK"),
                    resultSet.getString("DESCRIPTION"),
                    characters,
                    toLocalDateTime(resultSet.getString("DATEOFEVENTS"))
            ));
        }
        return events;
    }

    private LocalDateTime toLocalDateTime(String dateOfEvents) {
        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss.S");
        return LocalDateTime.parse(dateOfEvents, df);
    }
}
