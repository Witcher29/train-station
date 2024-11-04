package com.example.traintickets.repositories;

import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class ProcedureRepo {

    private final JdbcTemplate jdbcTemplate;
    public ProcedureRepo(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    public void setTrainCardDelayToZero(Integer trainId) {
        String sql = "CALL set_train_card_delay_to_zero(?)";
        jdbcTemplate.update(sql, trainId);
    }
}
