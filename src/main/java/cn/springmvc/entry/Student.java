package cn.springmvc.entry;

/**
 * Created by ASUS on 2017/6/9.
 */
public class Student {
    private Integer id ;
    private String stuNumber;
    private  String stuId;
    private String stuName;
    private String passWord;
    private String stuDescription;
    private Integer status;
    private String duty;

    @Override
    public String toString() {
        return "Student{" +
                "id=" + id +
                ", stuNumber='" + stuNumber + '\'' +
                ", stuId='" + stuId + '\'' +
                ", stuName='" + stuName + '\'' +
                ", passWord='" + passWord + '\'' +
                ", stuDescription='" + stuDescription + '\'' +
                ", status=" + status +
                ", duty='" + duty + '\'' +
                ", stuPhoto='" + stuPhoto + '\'' +
                ", gender='" + gender + '\'' +
                '}';
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty;
    }

    public String getStuPhoto() {
        return stuPhoto;
    }

    public void setStuPhoto(String stuPhoto) {
        this.stuPhoto = stuPhoto;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    private String stuPhoto;
    private String gender;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getStuNumber() {
        return stuNumber;
    }

    public void setStuNumber(String stuNumber) {
        this.stuNumber = stuNumber;
    }

    public String getStuId() {
        return stuId;
    }

    public void setStuId(String stuId) {
        this.stuId = stuId;
    }

    public String getStuName() {
        return stuName;
    }

    public void setStuName(String stuName) {
        this.stuName = stuName;
    }

    public String getPassWord() {
        return passWord;
    }

    public void setPassWord(String passWord) {
        this.passWord = passWord;
    }

    public String getStuDescription() {
        return stuDescription;
    }

    public void setStuDescription(String stuDescription) {
        this.stuDescription = stuDescription;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

}
