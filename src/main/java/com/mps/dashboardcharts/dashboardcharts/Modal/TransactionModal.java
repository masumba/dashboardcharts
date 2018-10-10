package com.mps.dashboardcharts.dashboardcharts.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "transaction")
public class TransactionModal {

    @Id
    @Column(name = "transaction_id")
    private Integer iD;

    @Column(name = "tsp_count")
    private Integer TspNum;

    @Column(name = "tsp_value")
    private Double TspVal;

    @Column(name = "input_count")
    private Integer InptNum;

    @Column(name = "input_value")
    private Double InptVal;

    public TransactionModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public Integer getTspNum() {
        return TspNum;
    }

    public void setTspNum(Integer tspNum) {
        TspNum = tspNum;
    }

    public Double getTspVal() {
        return TspVal;
    }

    public void setTspVal(Double tspVal) {
        TspVal = tspVal;
    }

    public Integer getInptNum() {
        return InptNum;
    }

    public void setInptNum(Integer inptNum) {
        InptNum = inptNum;
    }

    public Double getInptVal() {
        return InptVal;
    }

    public void setInptVal(Double inptVal) {
        InptVal = inptVal;
    }

    @Override
    public String toString() {
        return "TransactionModal{" +
                "iD=" + iD +
                ", TspNum=" + TspNum +
                ", TspVal=" + TspVal +
                ", InptNum=" + InptNum +
                ", InptVal=" + InptVal +
                '}';
    }
}
