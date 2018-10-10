package com.mps.dashboardcharts.dashboardcharts.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "mp_country")
public class MpCountryModal {

    @Id
    @Column(name = "id")
    private Integer iD;

    @Column(name = "grade_a")
    private Double gA;

    @Column(name = "grade_b")
    private Double gB;

    @Column(name = "grade_c")
    private Double gC;

    @Column(name = "month")
    private String 	month;

    public MpCountryModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public Double getgA() {
        return gA;
    }

    public void setgA(Double gA) {
        this.gA = gA;
    }

    public Double getgB() {
        return gB;
    }

    public void setgB(Double gB) {
        this.gB = gB;
    }

    public Double getgC() {
        return gC;
    }

    public void setgC(Double gC) {
        this.gC = gC;
    }

    public String getMonth() {
        return month;
    }

    public void setMonth(String month) {
        this.month = month;
    }

    @Override
    public String toString() {
        return "MpCountryModal{" +
                "iD=" + iD +
                ", gA=" + gA +
                ", gB=" + gB +
                ", gC=" + gC +
                ", month='" + month + '\'' +
                '}';
    }
}
