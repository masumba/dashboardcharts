package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.DistrictModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.DistrictRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/district_api")
public class DistrictController {

    @Autowired
    DistrictRepo districtRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<DistrictModal>getAllData(){
        return (List<DistrictModal>)districtRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public DistrictModal getData(@PathVariable(value = "id") Integer id){
        return districtRepo.findOne(id);
    }

    @GetMapping("/region/{id}")
    @CrossOrigin
    public List<DistrictModal>getRegionData(@PathVariable(value = "id") String id){
        return (List<DistrictModal>)districtRepo.findAllByRName(id);
    }
}
