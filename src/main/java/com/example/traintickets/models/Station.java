package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "station")
public class Station {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_station")
    private int idStation;

    @Column(name = "title", length = 50)
    private String title;

    @Column(name = "address", length = 200)
    private String address;

    @Column(name = "human_capacity")
    private Integer humanCapacity;

}
