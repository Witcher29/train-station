package com.example.traintickets.repositories;

import com.example.traintickets.models.Station;
import org.springframework.data.jpa.repository.JpaRepository;

public interface StationRepository extends JpaRepository<Station, Integer> {
    Station findByIdStation (Integer idStation);
}
