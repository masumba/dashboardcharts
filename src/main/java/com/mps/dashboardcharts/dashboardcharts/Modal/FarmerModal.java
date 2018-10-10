package com.mps.dashboardcharts.dashboardcharts.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "farmers")
public class FarmerModal {
    @Id
    @Column(name = "farmers_id")
    private Integer iD;

    @Column(name = "farmers_target")
    private Integer target;

    @Column(name = "farmers_reg")
    private Integer reg;

    @Column(name = "farmers_active")
    private Integer active;

    public FarmerModal() {
    }

    public Integer getiD() {
        return iD;
    }

    public void setiD(Integer iD) {
        this.iD = iD;
    }

    public Integer getTarget() {
        return target;
    }

    public void setTarget(Integer target) {
        this.target = target;
    }

    public Integer getReg() {
        return reg;
    }

    public void setReg(Integer reg) {
        this.reg = reg;
    }

    public Integer getActive() {
        return active;
    }

    public void setActive(Integer active) {
        this.active = active;
    }

    @Override
    public String toString() {
        return "FarmerModal{" +
                "iD=" + iD +
                ", target=" + target +
                ", reg=" + reg +
                ", active=" + active +
                '}';
    }
}
