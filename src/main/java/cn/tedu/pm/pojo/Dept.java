package cn.tedu.pm.pojo;

import java.io.Serializable;
import java.util.Date;

public class Dept implements Serializable {
    private String FID;
    private String FNumber;
    private String FName;
    private Dept FSuperior;
    private int FDisable;
    private Date FCreateTime;
    private User user;

    public String getFID() {
        return FID;
    }

    public void setFID(String FID) {
        this.FID = FID;
    }

    public String getFNumber() {
        return FNumber;
    }

    public void setFNumber(String FNumber) {
        this.FNumber = FNumber;
    }

    public String getFName() {
        return FName;
    }

    public void setFName(String FName) {
        this.FName = FName;
    }

    public Dept getFSuperior() {
        return FSuperior;
    }

    public void setFSuperior(Dept FSuperior) {
        this.FSuperior = FSuperior;
    }

    public int getFDisable() {
        return FDisable;
    }

    public void setFDisable(int FDisable) {
        this.FDisable = FDisable;
    }

    public Date getFCreateTime() {
        return FCreateTime;
    }

    public void setFCreateTime(Date FCreateTime) {
        this.FCreateTime = FCreateTime;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public String toString() {
        return "Dept{" +
                "FID='" + FID + '\'' +
                ", FNumber='" + FNumber + '\'' +
                ", FName='" + FName + '\'' +
                ", FSuperior=" + FSuperior +
                ", FDisable=" + FDisable +
                ", FCreateTime=" + FCreateTime +
                ", user=" + user +
                '}';
    }
}
