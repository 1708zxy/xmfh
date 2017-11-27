package cn.tedu.pm.pojo;


import java.io.Serializable;
import cn.tedu.pm.pojo.*;
import java.util.Date;

public class Emp implements Serializable {
    private String FUserID;
    private String FName;
    private String FJobNum;
    private String FMobile;
    private Dept dept;
    private Emp FHiLevel;
    private String FEmail;
    private String FSex;
    private Date FEntryDate;
    private Date FQuitDate;
    private Date FCreateTime;
    private String FCreateUser;
    private String FState;

    public String getFUserID() {
        return FUserID;
    }

    public void setFUserID(String FUserID) {
        this.FUserID = FUserID;
    }

    public String getFName() {
        return FName;
    }

    public void setFName(String FName) {
        this.FName = FName;
    }

    public String getFJobNum() {
        return FJobNum;
    }

    public void setFJobNum(String FJobNum) {
        this.FJobNum = FJobNum;
    }

    public String getFMobile() {
        return FMobile;
    }

    public void setFMobile(String FMobile) {
        this.FMobile = FMobile;
    }

    public Dept getDept() {
        return dept;
    }

    public void setDept(Dept dept) {
        this.dept = dept;
    }

    public Emp getFHiLevel() {
        return FHiLevel;
    }

    public void setFHiLevel(Emp FHiLevel) {
        this.FHiLevel = FHiLevel;
    }

    public String getFEmail() {
        return FEmail;
    }

    public void setFEmail(String FEmail) {
        this.FEmail = FEmail;
    }

    public String getFSex() {
        return FSex;
    }

    public void setFSex(String FSex) {
        this.FSex = FSex;
    }

    public Date getFEntryDate() {
        return FEntryDate;
    }

    public void setFEntryDate(Date FEntryDate) {
        this.FEntryDate = FEntryDate;
    }

    public Date getFQuitDate() {
        return FQuitDate;
    }

    public void setFQuitDate(Date FQuitDate) {
        this.FQuitDate = FQuitDate;
    }

    public Date getFCreateTime() {
        return FCreateTime;
    }

    public void setFCreateTime(Date FCreateTime) {
        this.FCreateTime = FCreateTime;
    }

    public String getFCreateUser() {
        return FCreateUser;
    }

    public void setFCreateUser(String FCreateUser) {
        this.FCreateUser = FCreateUser;
    }

    public String getFState() {
        return FState;
    }

    public void setFState(String FState) {
        this.FState = FState;
    }

    @Override
    public String toString() {
        return "emp{" +
                "FUserID='" + FUserID + '\'' +
                ", FName='" + FName + '\'' +
                ", FJobNum='" + FJobNum + '\'' +
                ", FMobile='" + FMobile + '\'' +
                ", dept=" + dept +
                ", FHiLevel=" + FHiLevel +
                ", FEmail='" + FEmail + '\'' +
                ", FSex='" + FSex + '\'' +
                ", FEntryDate='" + FEntryDate + '\'' +
                ", FQuitDate='" + FQuitDate + '\'' +
                ", FCreateTime='" + FCreateTime + '\'' +
                ", FCreateUser='" + FCreateUser + '\'' +
                ", FState='" + FState + '\'' +
                '}';
    }

}
