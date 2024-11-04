package com.example.traintickets.controllers;

import com.example.traintickets.models.Passenger;
import com.example.traintickets.models.Route;
import com.example.traintickets.models.VipHall;
import com.example.traintickets.repositories.PassengerRepository;
import com.example.traintickets.repositories.RouteRepository;
import com.example.traintickets.repositories.TrainRepository;
import com.example.traintickets.repositories.VipHallRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import java.util.List;

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
    public String subscribeToVipHall(@RequestParam Integer idPassenger, @RequestParam Integer idVipHall, Model model) {
        Passenger passenger = passengerRepository.findByIdPassenger(idPassenger);
        VipHall vipHall = vipHallRepository.findByIdVipHall(idVipHall);
        passenger.setIdVipHall(vipHall);
        passengerRepository.save(passenger);
        String fio =  passenger.getSurname() + " " + passenger.getName() + " " + passenger.getSecondName();
        message = "Passenger " + fio + " was subscribed to Vip Hall with ID: " + idVipHall;
        System.out.println(message);
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
}
