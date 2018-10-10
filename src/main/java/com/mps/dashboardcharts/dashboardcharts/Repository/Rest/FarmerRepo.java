package com.mps.dashboardcharts.dashboardcharts.Repository.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.FarmerModal;
import org.springframework.data.repository.CrudRepository;

public interface FarmerRepo extends CrudRepository<FarmerModal,Integer> {
}
