package com.example.traintickets.controllers;

import com.example.traintickets.models.Schedule;
import com.example.traintickets.models.ScheduleCard;
import com.example.traintickets.models.TrainCard;
import com.example.traintickets.repositories.ProcedureRepo;
import com.example.traintickets.repositories.ScheduleCardRepository;
import com.example.traintickets.repositories.ScheduleRepository;
import com.example.traintickets.repositories.TrainCardRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
public class ProceduresController {

    @Autowired
    ProcedureRepo procedureRepo;
    @Autowired
    TrainCardRepository trainCardRepository;
    @Autowired
    ScheduleRepository scheduleRepository;
    @Autowired
    ScheduleCardRepository scheduleCardRepository;
    private String message = null;
    @PostMapping("/reset-delay")
    public String setDelay(@RequestParam("id_train") int idTrain, Model model) {
        Set<Integer> setOfIdTrains = trainCardRepository.findAll().stream().map(n -> n.getIdTrain().getIdTrain()).collect(Collectors.toSet());
        if(setOfIdTrains.contains(idTrain)) {
            procedureRepo.setTrainCardDelayToZero(idTrain);
            message = "Procedure executed successfully for Train ID: " + idTrain;
        }
        else
            message = "There is no train with ID: " + idTrain;
        return "redirect:/reset-delay";
    }

    @GetMapping("/reset-delay")
    public String setDelayPage(Model model) {
        model.addAttribute("message", message);
        message = null;
        List<TrainCard> trainCardList = trainCardRepository.findAll();
        trainCardList = trainCardList.stream().sorted((o1, o2) -> o1.getIdTrain().getIdTrain() - o2.getIdTrain().getIdTrain()).collect(Collectors.toList());
        model.addAttribute("trainCards", trainCardList);
        return "resetDelay";
    }

    @GetMapping("/all-stop-points")
    public String mergeScheduleWithCardPage(Model model) {
        List<Schedule> scheduleList = scheduleRepository.findAll();
        model.addAttribute("schedules", scheduleList);
        model.addAttribute("scheduleCards", scheduleCardList);
        model.addAttribute("message", message);
        message = null;
        scheduleCardList = null;
        return "stopPoints";
    }
    private List<ScheduleCard> scheduleCardList;
    @PostMapping("/all-stop-points")
    public String mergeScheduleWithCard(@RequestParam Integer idSchedule, Model model) {
        String id_cards = procedureRepo.getIdScheduleCardsByScheduleId(idSchedule);
        scheduleCardList = Arrays.stream(id_cards.split(","))
                                                    .map(n -> scheduleCardRepository.findByIdScheduleCard(Integer.valueOf(n)))
                                                    .toList();
        if (!scheduleCardList.isEmpty())
            message = "Success search for ID of Schedule: " + idSchedule;
        else
            message = "Incorrect ID of schedule";
        return "redirect:/all-stop-points";
    }
}
