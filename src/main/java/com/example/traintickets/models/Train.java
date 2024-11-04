package com.example.traintickets.models;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@NoArgsConstructor
@Setter
@Getter
@Entity
@Table(name = "train")
public class Train {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id_train")
    private int idTrain;

    @Column(name = "train_number")
    private Integer trainNumber;

    @Column(name = "route_name", length = 50)
    private String routeName;

    @Column(name = "type", length = 50)
    private String type;

    @Column(name = "number_of_wagons")
    private Integer numberOfWagons;

    @Column(name = "numbering_of_wagons", columnDefinition = "ENUM('From the head of the train', 'From the back of the train')")
    private String numberingOfWagons;

    @Column(name = "presence_of_restaurant_wagon", length = 5)
    private String presenceOfRestaurantWagon;

    @Column(name = "presence_of_shower", length = 5)
    private String presenceOfShower;

}
