package cn.tedu.pm.pojo;

import java.util.Date;

public class User {

    private Integer FUserID;

    private String FName;

    private String FPassword;

    private Integer FPhone;

    private String FNickname;

    private String FEmail;

    private Date FCreateTime;

    private Integer FCreateUser;

    public Integer getFUserID() {
        return FUserID;
    }

    public void setFUserID(Integer FUserID) {
        this.FUserID = FUserID;
    }

    public String getFName() {
        return FName;
    }

    public void setFName(String FName) {
        this.FName = FName;
    }

    public String getFPassword() {
        return FPassword;
    }

    public void setFPassword(String FPassword) {
        this.FPassword = FPassword;
    }

    public Integer getFPhone() {
        return FPhone;
    }

    public void setFPhone(Integer FPhone) {
        this.FPhone = FPhone;
    }

    public String getFNickname() {
        return FNickname;
    }

    public void setFNickname(String FNickname) {
        this.FNickname = FNickname;
    }

    public String getFEmail() {
        return FEmail;
    }

    public void setFEmail(String FEmail) {
        this.FEmail = FEmail;
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

    @Override
    public String toString() {
        return "User{" +
                "FUserID=" + FUserID +
                ", FName='" + FName + '\'' +
                ", FPassword='" + FPassword + '\'' +
                ", FPhone=" + FPhone +
                ", FNickname='" + FNickname + '\'' +
                ", FEmail='" + FEmail + '\'' +
                ", FCreateTime=" + FCreateTime +
                ", FCreateUser=" + FCreateUser +
                '}';
    }
}
