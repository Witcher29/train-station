package com.example.traintickets.repositories;

import com.example.traintickets.models.ScheduleCard;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ScheduleCardRepository extends JpaRepository<ScheduleCard, Integer> {
}
