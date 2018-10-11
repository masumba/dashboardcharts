package com.mps.dashboardcharts.dashboardcharts.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mcc_country")
public class MccCountryModal {

    @Id
    @Column(name = "id")
    private Integer iD;

    @Column(name = "month")
    private String month;

    @Column(name = "ltr_collected")
    private Double ltrCol;

    public MccCountryModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    public Double getLtrCol() {
        return ltrCol;
    }

    public void setLtrCol(Double ltrCol) {
        this.ltrCol = ltrCol;
    }

    @Override
    public String toString() {
        return "MccCountryModal{" +
                "iD=" + iD +
                ", month='" + month + '\'' +
                ", ltrCol=" + ltrCol +
                '}';
    }
}
