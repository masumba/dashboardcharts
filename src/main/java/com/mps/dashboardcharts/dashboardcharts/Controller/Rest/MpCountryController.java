package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.MpCountryModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.MpCountryRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/mp_country_api")
public class MpCountryController {

    @Autowired
    MpCountryRepository mpCountryRepository;

    @GetMapping("/all")
    @CrossOrigin
    public List<MpCountryModal>getAllData(){
        return (List<MpCountryModal>)mpCountryRepository.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public MpCountryModal getData(@PathVariable(value = "id") Integer id){
        return mpCountryRepository.findOne(id);
    }
}
