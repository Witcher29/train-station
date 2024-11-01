package com.example.traintickets.repositories;

import com.example.traintickets.models.Log;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LogRepository extends JpaRepository<Log, Integer> {
}
