package com.example.traintickets.controllers;

import com.example.traintickets.models.TrainCard;
import com.example.traintickets.repositories.ProcedureRepo;
import com.example.traintickets.repositories.TrainCardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class ProceduresController {

    @Autowired
    ProcedureRepo procedureRepo;
    @Autowired
    TrainCardRepository trainCardRepository;
    private String message = null;
    @PostMapping("/set-delay")
    public String setDelay(@RequestParam("id_train") int idTrain, Model model) {
        procedureRepo.setTrainCardDelayToZero(idTrain);
        message = "Procedure executed successfully for Train ID: " + idTrain;
        return "redirect:/set-delay";
    }

    @GetMapping("/set-delay")
    public String setDelayPage(Model model) {
        model.addAttribute("message", message);

        List<TrainCard> trainCardList = trainCardRepository.findAll();
        model.addAttribute("trainCards", trainCardList);
        return "trainCardDelay";
    }
}
