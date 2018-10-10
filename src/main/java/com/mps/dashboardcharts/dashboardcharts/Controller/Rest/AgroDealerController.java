package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.AgroDealerModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.AgroDealerRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/agrodealer_api")
public class AgroDealerController {
    @Autowired
    AgroDealerRepo agroDealerRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<AgroDealerModal>getAllData(){
        return (List<AgroDealerModal>)agroDealerRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public AgroDealerModal getData(@PathVariable(value = "id") Integer id){
        return agroDealerRepo.findOne(id);
    }
}
