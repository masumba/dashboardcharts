package com.mps.dashboardcharts.dashboardcharts.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "daz_finances")
public class DazFinancesModal {

    @Id
    @Column(name = "id")
    private Integer iD;

    @Column(name = "amount")
    private Double amount;

    @Column(name = "month")
    private String month;

    public DazFinancesModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public Double getAmount() {
        return amount;
    }

    public void setAmount(Double amount) {
        this.amount = amount;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    @Override
    public String toString() {
        return "DazFinancesModal{" +
                "iD=" + iD +
                ", amount=" + amount +
                ", month='" + month + '\'' +
                '}';
    }
}
