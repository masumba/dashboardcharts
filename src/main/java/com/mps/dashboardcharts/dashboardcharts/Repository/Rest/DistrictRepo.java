package com.mps.dashboardcharts.dashboardcharts.Repository.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.DistrictModal;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface DistrictRepo extends CrudRepository<DistrictModal,Integer> {
    List<DistrictModal>findAllByRName(String regionName);
}
