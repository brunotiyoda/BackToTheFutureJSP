package com.back.to.the.future.services;

import com.back.to.the.future.beans.Relation;
import com.back.to.the.future.dao.RelationsDAO;

import java.sql.SQLException;

public class RelationsService {

    private final RelationsDAO relationsDAO = new RelationsDAO();

    public Object relations(int characterOne, int characterTwo) throws SQLException, ClassNotFoundException {
        return relationsDAO.relation(characterOne, characterTwo);
    }
}
