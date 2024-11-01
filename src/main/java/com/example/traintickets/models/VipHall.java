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

    @Column(name = "free_capacity")
    private Integer freeCapacity;

    @Column(name = "wifi_access", length = 4)
    private String wifiAccess;

    @Column(name = "quantity_of_vips_who_can_be_here")
    private Integer quantityOfVipsWhoCanBeHere;

}

