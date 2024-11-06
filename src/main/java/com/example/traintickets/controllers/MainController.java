package com.example.traintickets.controllers;

import com.example.traintickets.models.*;
import com.example.traintickets.repositories.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.sql.Time;
import java.util.Comparator;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Controller
public class MainController {

    @Autowired
    RouteRepository routeRepository;
    @Autowired
    TrainRepository trainRepository;
    @Autowired
    PassengerRepository passengerRepository;
    @Autowired
    VipHallRepository vipHallRepository;
    @Autowired
    WaitingHallRepository waitingHallRepository;
    @Autowired
    RailwayWorkerRepository railwayWorkerRepository;
    @Autowired
    StationRepository stationRepository;
    @Autowired
    TrainCardRepository trainCardRepository;

    private String message = null;
    @GetMapping("/")
    public String getMain (Model model) {
        return "hello";
    }
    @GetMapping("/routes")
    public String getRoute(Model model) {
        List<Route> listOfRoutes = routeRepository.findAll();
        model.addAttribute("listOfRoutes", listOfRoutes);
        return "routes";
    }

    @GetMapping("/passenger-form")
    public String getPassengerForm(Model model) {
        return "passengerForm";
    }
    @PostMapping("/passenger-form")
    public String setPassenger(@ModelAttribute Passenger passenger, @RequestParam Integer idVipHall, Model model) {
        if (idVipHall != null) {
            VipHall vipHall = vipHallRepository.findByIdVipHall(idVipHall);
            passenger.setIdVipHall(vipHall);
        }
        passengerRepository.save(passenger);
        return "redirect:/passenger-form";
    }

    @GetMapping("/subscribe-to-vip-hall")
    public String subscribeToVipHallPage(Model model) {
        List<VipHall> vipHallList = vipHallRepository.findAll();
        model.addAttribute("vipHalls", vipHallList);
        model.addAttribute("message", message);
        message = null;
        return "subscribeToVipHall";
    }
    @PostMapping("/subscribe-to-vip-hall")
    public String subscribeToVipHall(@RequestParam Integer idPassenger, @RequestParam Integer numberOfHall, Model model) {
        Passenger passenger = passengerRepository.findByIdPassenger(idPassenger);
        if (passenger == null) {
            message = "Uncorrect passenger ID.";
            return "redirect:/subscribe-to-vip-hall";
        }
        VipHall vipHall = vipHallRepository.findByNumberOfHall(numberOfHall);
        if (vipHall != null) {
            passenger.setIdVipHall(vipHall);
            passengerRepository.save(passenger);
            String fio =  passenger.getSurname() + " " + passenger.getName() + " " + passenger.getSecondName();
            message = "Passenger " + fio + " was subscribed to Vip Hall " + numberOfHall;
        } else
            message = "Uncorrect number of Vip Hall.";
        return "redirect:/subscribe-to-vip-hall";
    }

    List<Passenger> passengerList = null;
    @GetMapping("/find-id-passenger")
    public String findIdPassengerPage(Model model) {
        model.addAttribute("message", message);
        model.addAttribute("passengers", passengerList);
        message = null;
        passengerList = null;
        return "findIdPassenger";
    }
    @PostMapping("/find-id-passenger")
    public String findIdPassenger(@RequestParam String name, @RequestParam String surname, @RequestParam String secondName, Model model) {
        if (surname != "" && name != "" && secondName != "") {
            passengerList = passengerRepository.findAllByNameAndSurnameAndSecondName(name, surname, secondName);
        } else if(name != "" && surname != "" && secondName == "") {
            passengerList = passengerRepository.findAllByNameAndSurname(name, surname);
        } else if (name != "" && surname == "" && secondName != "") {
            passengerList = passengerRepository.findAllByNameAndSecondName(name, secondName);
        } else if (name == "" && surname != "" && secondName != "") {
            passengerList = passengerRepository.findAllBySecondNameAndSurname(secondName, surname);
        } else if (name != "" && surname =="" && secondName == "") {
            passengerList = passengerRepository.findAllByName(name);
        } else if (name == "" && surname != "" && secondName == "") {
            passengerList = passengerRepository.findAllBySurname(surname);
        } else if (name == "" && surname == "" && secondName != "") {
            passengerList = passengerRepository.findAllBySecondName(secondName);
        }
        if (passengerList.isEmpty())
            message = "Nobody was found.";
        else
            message = "We have found someone :)";
        return "redirect:/find-id-passenger";
    }

    @GetMapping("/waiting-hall")
    public String waitingHallPage(Model model) {
        List<WaitingHall> waitingHallList = waitingHallRepository.findAll();
        model.addAttribute("halls", waitingHallList);
        return "waitingHall";
    }

    @GetMapping("/personal-manager")
    public String personalManagerPage(Model model) {
        List<RailwayWorker> railwayWorkerList = railwayWorkerRepository.findAll();
        model.addAttribute("workers", railwayWorkerList);
        return "personalManager";
    }

    @GetMapping("/add-worker")
    public String showAddWorkerForm(Model model) {
        model.addAttribute("worker", new RailwayWorker());
        model.addAttribute("message", message);
        message = null;
        return "addWorker";
    }

    @PostMapping("/add-worker")
    public String addWorker(@ModelAttribute RailwayWorker worker, @RequestParam Integer idStation, Model model) {
        Set<Integer> setOfStationId = stationRepository.findAll().stream().map(n -> n.getIdStation()).collect(Collectors.toSet());
        if (setOfStationId.contains(idStation)) {
            worker.setIdStation(stationRepository.findByIdStation(idStation));
            railwayWorkerRepository.save(worker);
            message = "Worker was saved successfully";
        } else
            message = "We do not have station with ID: " + idStation;
        return "redirect:add-worker";
    }

    @GetMapping("/delete-worker")
    public String showDeleteWorkerForm(Model model) {
        model.addAttribute("message", message);
        message = null;
        return "deleteWorker";
    }

    @PostMapping("/delete-worker")
    public String deleteWorker(@RequestParam Integer workerId, Model model) {
        RailwayWorker railwayWorker = railwayWorkerRepository.findByIdRailwayWorker(workerId);
        if (railwayWorker != null) {
            railwayWorkerRepository.delete(railwayWorker);
            message = "Delete was successful. There is not " + railwayWorker.getSurname() + " " + railwayWorker.getName() + " " + railwayWorker.getSecondName() + " anymore :(";
        } else
            message = "We do not have worker with ID: " + workerId;
        return "redirect:/delete-worker";
    }

    @GetMapping("/define-delay")
    public String delayManagerPage(Model model) {
        List<TrainCard> trainCardList = trainCardRepository.findAll();
        trainCardList = trainCardList.stream().sorted((o1, o2) -> o1.getIdTrain().getIdTrain() - o2.getIdTrain().getIdTrain()).collect(Collectors.toList());
        model.addAttribute("trainCards", trainCardList);
        return "delayManager";
    }

    @GetMapping("/set-delay")
    public String setDelayPage (Model model) {
        List<TrainCard> trainCardList = trainCardRepository.findAll();
        trainCardList = trainCardList.stream().sorted((o1, o2) -> o1.getIdTrain().getIdTrain() - o2.getIdTrain().getIdTrain()).collect(Collectors.toList());
        model.addAttribute("trainCards", trainCardList);
        model.addAttribute("message", message);
        message = null;
        return "setDelay";
    }

    @PostMapping("/set-delay")
    public String setDelay (@RequestParam Integer idTrainCard, @RequestParam String time, Model model) {
        time += ":00";
        System.out.println(time);
        Time time1 = Time.valueOf(time);
        TrainCard trainCard = trainCardRepository.findByIdTrainCard(idTrainCard);
        if (trainCard != null) {
            trainCard.setDelay(time1);
            trainCardRepository.save(trainCard);
            message = "Successful set of delay";
        } else
            message = "There is no train card with ID: " + idTrainCard;
        return "redirect:/set-delay";
    }
}
