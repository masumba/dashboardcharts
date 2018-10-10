package com.mps.dashboardcharts.dashboardcharts.Modal;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "finances")
public class FinancesModal {

    @Id
    @Column(name = "finances_id")
    private Integer iD;

    @Column(name = "finances_given")
    private Double given;

    @Column(name = "finances_used")
    private Double used;

    @Column(name = "finances_credited")
    private Double credited;

    public FinancesModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public Double getGiven() {
        return given;
    }

    public void setGiven(Double given) {
        this.given = given;
    }

    public Double getUsed() {
        return used;
    }

    public void setUsed(Double used) {
        this.used = used;
    }

    public Double getCredited() {
        return credited;
    }

    public void setCredited(Double credited) {
        this.credited = credited;
    }

    @Override
    public String toString() {
        return "FinancesModal{" +
                "iD=" + iD +
                ", given=" + given +
                ", used=" + used +
                ", credited=" + credited +
                '}';
    }
}
