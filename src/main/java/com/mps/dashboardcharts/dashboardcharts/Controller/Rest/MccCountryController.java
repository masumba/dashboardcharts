package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.MccCountryModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.MccCountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/mccCountry")
public class MccCountryController {

    @Autowired
    MccCountryRepository mccCountryRepository;

    @GetMapping("/all")
    @CrossOrigin
    public List<MccCountryModal> getAll(){
        return (List<MccCountryModal>)mccCountryRepository.findAll();
    }

    @GetMapping("/id/{id}")
    @CrossOrigin
    public MccCountryModal getData(@PathVariable(value = "id") Integer id){
        return mccCountryRepository.findOne(id);
    }
}
