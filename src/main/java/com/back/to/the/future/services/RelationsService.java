package com.back.to.the.future.services;

import com.back.to.the.future.dao.RelationsDAO;

import java.sql.SQLException;

public class RelationsService {

    private final RelationsDAO relationsDAO = new RelationsDAO();

    public Object relations(int idRelation) throws SQLException, ClassNotFoundException {
        return relationsDAO.relation(idRelation);
    }
}
