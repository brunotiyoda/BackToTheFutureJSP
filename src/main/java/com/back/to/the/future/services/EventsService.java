package com.back.to.the.future.services;

import com.back.to.the.future.beans.Events;
import com.back.to.the.future.dao.EventDAO;

import java.sql.SQLException;
import java.util.List;

public class EventsService {

    private final EventDAO eventDAO = new EventDAO();

    public List<Events> allEventsTimelineOne() throws SQLException, ClassNotFoundException {
        return eventDAO.allEventsTimelineOne();
    }

    public List<Events> allEventsTimelineTwo() throws SQLException, ClassNotFoundException {
        return eventDAO.allEventsTimelineTwo();
    }
}
