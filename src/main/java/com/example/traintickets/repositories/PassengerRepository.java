package com.example.traintickets.repositories;

import com.example.traintickets.models.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface PassengerRepository extends JpaRepository<Passenger, Integer> {
    Passenger findByIdPassenger(Integer idVipHall);
    List<Passenger> findAllByNameAndSurnameAndSecondName(String name, String surname, String secondName);
    List<Passenger> findAllByNameAndSurname(String name, String surname);
    List<Passenger> findAllByNameAndSecondName(String name, String surname);
    List<Passenger> findAllBySecondNameAndSurname(String secondName, String surname);
    List<Passenger> findAllByName(String name);
    List<Passenger> findAllBySurname(String surname);
    List<Passenger> findAllBySecondName(String secondName);
}
