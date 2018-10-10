package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.FarmerModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.FarmerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/farmer_api")
public class FarmerController {

    @Autowired
    FarmerRepo farmerRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<FarmerModal> getAllData(){
        return (List<FarmerModal>)farmerRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public FarmerModal getData(@PathVariable(value = "id") Integer id){
        return farmerRepo.findOne(id);
    }
}
