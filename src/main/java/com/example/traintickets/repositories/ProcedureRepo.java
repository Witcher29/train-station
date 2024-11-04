package com.example.traintickets.repositories;

import org.springframework.jdbc.core.CallableStatementCallback;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.sql.CallableStatement;
import java.sql.Types;

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

    public String getIdScheduleCardsByScheduleId(Integer scheduleId) {
        // Переменная для хранения результата
        String[] result = new String[1];

        jdbcTemplate.execute(
                connection -> {
                    // Подготовка вызова процедуры
                    CallableStatement callableStatement = connection.prepareCall("{CALL get_id_schedule_cards_by_schedule_id(?, ?)}");
                    callableStatement.setInt(1, scheduleId);
                    callableStatement.registerOutParameter(2, Types.VARCHAR); // Тип выходного параметра
                    return callableStatement;
                },
                (CallableStatementCallback<String>) callableStatement -> {
                    // Выполнение процедуры
                    callableStatement.execute();
                    // Извлечение выходного параметра
                    result[0] = callableStatement.getString(2); // здесь id_schedule_card через запятую без пробелов
                    return result[0];
                }
        );

        return result[0];
    }
}
