package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "waiting_hall")
public class WaitingHall {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_waiting_hall")
    private int idWaitingHall;

    @Column(name = "quantity_usb_charges")
    private Integer quantityUsbCharges;

    @ManyToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "id_station", nullable = false)
    private Station idStation;

    @Column(name = "free_capacity")
    private Integer freeCapacity;

    @Column(name = "human_capacity_now")
    private Integer humanCapacityNow;

}
