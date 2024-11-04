package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "vip_hall")
public class VipHall {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_vip_hall")
    private int idVipHall;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_station")
    private Station idStation;

    @Column(name = "sofa_with_table")
    private String sofaWithTable;

    @Column(name = "wifi_access", length = 4)
    private String wifiAccess;

    @Column(name = "tv")
    private String tv;

    @Column(name = "snack_machine")
    private String snackMachine;

    @Column(name = "number_of_hall")
    private Integer numberOfHall;

}

