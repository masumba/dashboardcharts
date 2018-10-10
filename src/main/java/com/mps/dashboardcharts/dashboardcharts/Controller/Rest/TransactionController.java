package com.mps.dashboardcharts.dashboardcharts.Controller.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.TransactionModal;
import com.mps.dashboardcharts.dashboardcharts.Repository.Rest.TransactionRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/transaction_api")
public class TransactionController {

    @Autowired
    TransactionRepo transactionRepo;

    @GetMapping("/all")
    @CrossOrigin
    public List<TransactionModal>getAllData(){
        return (List<TransactionModal>)transactionRepo.findAll();
    }

    @GetMapping("/all/{id}")
    @CrossOrigin
    public TransactionModal getData(@PathVariable(value = "id") Integer id){
        return transactionRepo.findOne(id);
    }
}
