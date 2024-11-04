package com.example.traintickets.repositories;

import com.example.traintickets.models.RailwayWorker;
import org.springframework.data.jpa.repository.JpaRepository;

public interface RailwayWorkerRepository extends JpaRepository<RailwayWorker, Integer> {
    RailwayWorker findByIdRailwayWorker (Integer idWorker);
}
