package com.example.traintickets.repositories;

import com.example.traintickets.models.VipHall;
import org.springframework.data.jpa.repository.JpaRepository;

public interface VipHallRepository extends JpaRepository<VipHall, Integer> {
    VipHall findByIdVipHall(Integer id);
    VipHall findByNumberOfHall(Integer numberOfHall);
}
