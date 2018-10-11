package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.DazFinancesModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.DazFinancesRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/daz_finances")
public class DazFinancesController {

    @Autowired
    DazFinancesRepository dazFinancesRepository;

    @GetMapping("/all")
    @CrossOrigin
    public List<DazFinancesModal>getAll(){
        return (List<DazFinancesModal>)dazFinancesRepository.findAll();
    }

    @GetMapping("/id/{id}")
    @CrossOrigin
    public DazFinancesModal getData(@PathVariable(value = "id") Integer id){
        return dazFinancesRepository.findOne(id);
    }
}
