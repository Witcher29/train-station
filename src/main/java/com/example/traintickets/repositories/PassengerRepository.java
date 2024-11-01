package com.example.traintickets.repositories;

import com.example.traintickets.models.Passenger;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PassengerRepository extends JpaRepository<Passenger, Integer> {
}
