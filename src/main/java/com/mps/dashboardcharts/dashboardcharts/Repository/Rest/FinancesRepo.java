package com.mps.dashboardcharts.dashboardcharts.Repository.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.FinancesModal;
import org.springframework.data.repository.CrudRepository;

public interface FinancesRepo extends CrudRepository<FinancesModal,Integer> {
}
