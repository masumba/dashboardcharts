package com.mps.dashboardcharts.dashboardcharts.Repository.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.TransactionModal;
import org.springframework.data.repository.CrudRepository;

public interface TransactionRepo extends CrudRepository<TransactionModal,Integer> {
}
