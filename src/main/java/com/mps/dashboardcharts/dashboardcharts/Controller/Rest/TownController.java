package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.TownModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.TownRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/town_api")
public class TownController {

    @Autowired
    TownRepo townRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<TownModal>getAllData(){
        return (List<TownModal>)townRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public TownModal getData(@PathVariable(value = "id") Integer id){
        return townRepo.findOne(id);
    }

    @GetMapping("/district/{id}")
    @CrossOrigin
    public List<TownModal>getDistrictData(@PathVariable(value = "id") String id){
        return (List<TownModal>)townRepo.findAllByDName(id);
    }
}
