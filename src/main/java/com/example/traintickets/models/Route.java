package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "route")
public class Route {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_route")
    private int idRoute;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_station")
    private Station idStation;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_train")
    private Train idTrain;

    @Column(name = "number")
    private Integer number;

}

