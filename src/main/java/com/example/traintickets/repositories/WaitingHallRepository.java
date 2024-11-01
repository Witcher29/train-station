package com.example.traintickets.repositories;

import com.example.traintickets.models.WaitingHall;
import org.springframework.data.jpa.repository.JpaRepository;

public interface WaitingHallRepository extends JpaRepository<WaitingHall, Integer> {
}
