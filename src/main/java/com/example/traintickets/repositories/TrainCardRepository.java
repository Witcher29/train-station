package com.example.traintickets.repositories;

import com.example.traintickets.models.TrainCard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TrainCardRepository extends JpaRepository<TrainCard, Integer> {
}
