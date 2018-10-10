package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.FinancesModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.FinancesRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/finances_api")
public class FinancesController {

    @Autowired
    FinancesRepo financesRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<FinancesModal>getAllData(){
        return (List<FinancesModal>)financesRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public FinancesModal getData(@PathVariable(value = "id") Integer id){
        return financesRepo.findOne(id);
    }
}
