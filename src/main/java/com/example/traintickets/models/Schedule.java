package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.sql.Time;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "schedule")
public class Schedule {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_schedule")
    private int idSchedule;

    @Column(name = "duration")
    private Time duration;

    @Column(name = "start_point", length = 50)
    private String startPoint;

    @Column(name = "end_point", length = 50)
    private String endPoint;

}
