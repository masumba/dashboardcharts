package com.mps.dashboardcharts.dashboardcharts.Repository.Rest;

import com.mps.dashboardcharts.dashboardcharts.Modal.TownModal;
import org.springframework.data.repository.CrudRepository;

import java.util.List;

public interface TownRepo extends CrudRepository<TownModal,Integer> {
    List<TownModal>findAllByDName(String districtName);
}
