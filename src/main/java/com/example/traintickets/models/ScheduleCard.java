package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.util.Date;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "schedule_card")
public class ScheduleCard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_schedule_card")
    private int idScheduleCard;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_schedule")
    private Schedule idSchedule;

    @Column(name = "stop_point", length = 50)
    private String stopPoint;

    @Column(name = "time_of_arrive")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeOfArrive;

    @Column(name = "time_of_departure")
    @Temporal(TemporalType.TIMESTAMP)
    private Date timeOfDeparture;

}
