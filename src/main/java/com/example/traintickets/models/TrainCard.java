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
@Table(name = "train_card")
public class TrainCard {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_train_card")
    private int idTrainCard;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_train")
    private Train idTrain;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_schedule_card")
    private ScheduleCard idScheduleCard;

    @Column(name = "delay")
    private Time delay;

}

