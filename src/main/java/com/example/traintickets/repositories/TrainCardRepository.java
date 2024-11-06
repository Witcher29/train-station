package com.example.traintickets.repositories;

import com.example.traintickets.models.Train;
import com.example.traintickets.models.TrainCard;
import org.springframework.data.jpa.repository.JpaRepository;

import java.util.List;

public interface TrainCardRepository extends JpaRepository<TrainCard, Integer> {
    TrainCard findByIdTrainCard (Integer idTrainCard);
    List<TrainCard> findAllByIdTrain(Train idTrain);
}
