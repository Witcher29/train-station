package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "passenger")
public class Passenger {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_passenger")
    private int idPassenger;

    @Column(name = "surname", length = 50)
    private String surname;

    @Column(name = "name", length = 50)
    private String name;

    @Column(name = "second_name", length = 50)
    private String secondName;

    @Column(name = "telephone", length = 20)
    private String telephone;

    @Column(name = "mail", length = 20)
    private String mail;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_vip_hall")
    private VipHall idVipHall;

}