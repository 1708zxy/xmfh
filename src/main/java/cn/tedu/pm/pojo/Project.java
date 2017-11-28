package cn.tedu.pm.pojo;

import java.util.Date;

public class Project {
    private Integer FId;
    private String FNumber;
    private String FName;
    private Integer FPM;
    private Integer FDeptId;
    private String FDescribe;
    private Integer FStatus;
    private Date FCreateTime;
    private Integer FCreateUser;
    private String FCname;

    public String getFCname() {
        return FCname;
    }

    public void setFCname(String FCname) {
        this.FCname = FCname;
    }

    public Integer getFId() {
        return FId;
    }

    public void setFId(Integer FId) {
        this.FId = FId;
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

    public Integer getFPM() {
        return FPM;
    }

    public void setFPM(Integer FPM) {
        this.FPM = FPM;
    }

    public Integer getFDeptId() {
        return FDeptId;
    }

    public void setFDeptId(Integer FDeptId) {
        this.FDeptId = FDeptId;
    }

    public String getFDescribe() {
        return FDescribe;
    }

    public void setFDescribe(String FDescribe) {
        this.FDescribe = FDescribe;
    }

    public Integer getFStatus() {
        return FStatus;
    }

    public void setFStatus(Integer FStatus) {
        this.FStatus = FStatus;
    }

    public Date getFCreateTime() {
        return FCreateTime;
    }

    public void setFCreateTime(Date FCreateTime) {
        this.FCreateTime = FCreateTime;
    }

    public Integer getFCreateUser() {
        return FCreateUser;
    }

    public void setFCreateUser(Integer FCreateUser) {
        this.FCreateUser = FCreateUser;
    }
}
