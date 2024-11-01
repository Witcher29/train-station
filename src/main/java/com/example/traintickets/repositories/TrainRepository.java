package com.example.traintickets.repositories;

import com.example.traintickets.models.Train;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TrainRepository extends JpaRepository<Train, Integer> {
}
