package com.mps.dashboardcharts.dashboardcharts.Modal;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "agrodealer")
public class AgroDealerModal {
    @Id
    @Column(name = "agrodealer_id")
    private Integer iD;

    @Column(name = "agrodealer_target")
    private Integer target;

    @Column(name = "agrodealer_registered")
    private Integer reg;

    @Column(name = "agrodealer_active")
    private Integer active;

    public AgroDealerModal() {
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
        return "AgroDealerModal{" +
                "iD=" + iD +
                ", target=" + target +
                ", reg=" + reg +
                ", active=" + active +
                '}';
    }
}
