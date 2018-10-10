package com.mps.dashboardcharts.dashboardcharts.Modal;


import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "region")
public class RegionModal {

    @Id
    @Column(name = "region_id")
    private Integer iD;

    @Column(name = "region_name")
    private String name;

    @Column(name = "farmers_target")
    private Integer ftarget;

    @Column(name = "farmers_reg")
    private Integer freg;

    @Column(name = "farmers_active")
    private Integer factive;

    @Column(name = "finances_given")
    private Double given;

    @Column(name = "finances_used")
    private Double used;

    @Column(name = "finances_credited")
    private Double credited;

    @Column(name = "tsp_count")
    private Integer TspNum;

    @Column(name = "tsp_value")
    private Double TspVal;

    @Column(name = "input_count")
    private Integer InptNum;

    @Column(name = "input_value")
    private Double InptVal;

    @Column(name = "agrodealer_target")
    private Integer adtarget;

    @Column(name = "agrodealer_registered")
    private Integer adreg;

    @Column(name = "agrodealer_active")
    private Integer adactive;

    public RegionModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Integer getFtarget() {
        return ftarget;
    }

    public void setFtarget(Integer ftarget) {
        this.ftarget = ftarget;
    }

    public Integer getFreg() {
        return freg;
    }

    public void setFreg(Integer freg) {
        this.freg = freg;
    }

    public Integer getFactive() {
        return factive;
    }

    public void setFactive(Integer factive) {
        this.factive = factive;
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

    public Integer getAdtarget() {
        return adtarget;
    }

    public void setAdtarget(Integer adtarget) {
        this.adtarget = adtarget;
    }

    public Integer getAdreg() {
        return adreg;
    }

    public void setAdreg(Integer adreg) {
        this.adreg = adreg;
    }

    public Integer getAdactive() {
        return adactive;
    }

    public void setAdactive(Integer adactive) {
        this.adactive = adactive;
    }

    @Override
    public String toString() {
        return "RegionModal{" +
                "iD=" + iD +
                ", name='" + name + '\'' +
                ", ftarget=" + ftarget +
                ", freg=" + freg +
                ", factive=" + factive +
                ", given=" + given +
                ", used=" + used +
                ", credited=" + credited +
                ", TspNum=" + TspNum +
                ", TspVal=" + TspVal +
                ", InptNum=" + InptNum +
                ", InptVal=" + InptVal +
                ", adtarget=" + adtarget +
                ", adreg=" + adreg +
                ", adactive=" + adactive +
                '}';
    }
}
