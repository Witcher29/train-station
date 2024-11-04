package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "railway_worker")
public class RailwayWorker {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_railway_worker")
    private Integer idRailwayWorker;

    @ManyToOne
    @JoinColumn(name = "id_station")
    private Station idStation;

    @Column(name = "surname", length = 50)
    private String surname;

    @Column(name = "name", length = 50)
    private String name;

    @Column(name = "second_name", length = 50)
    private String secondName;

    @Column(name = "post", length = 150)
    private String post;

}
