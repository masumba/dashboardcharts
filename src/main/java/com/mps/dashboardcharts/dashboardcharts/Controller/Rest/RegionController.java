package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;


import com.mps.dashboardcharts.dashboardcharts.Modal.RegionModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.RegionRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/region_api")
public class RegionController {

    @Autowired
    RegionRepo regionRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<RegionModal>getAllData(){
        return (List<RegionModal>)regionRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public RegionModal getData(@PathVariable(value = "id") Integer id){
        return regionRepo.findOne(id);
    }
}
