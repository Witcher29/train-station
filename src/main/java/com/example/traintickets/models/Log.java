package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "log")
public class Log {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_log")
    private int idLog;

    @Column(name = "name_table", length = 20)
    private String nameTable;

    @Column(name = "action", length = 20)
    private String action;

    @Column(name = "time_of_action")
    @Temporal(TemporalType.TIMESTAMP)
    private LocalDateTime timeOfAction;

}