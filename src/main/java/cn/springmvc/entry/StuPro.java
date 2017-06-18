package cn.springmvc.entry;

/**
 * Created by ASUS on 2017/6/18.<br>
 * 关联学生和其项目的类
 *
 */
public class StuPro {
    private Integer id;
    private Integer stu_id;
    private String stu_name;
    private Integer pro_id;
    private String pro_name;
    private Integer status;

    @Override
    public String toString() {
        return "StuPro{" +
                "id=" + id +
                ", stu_id=" + stu_id +
                ", stu_name='" + stu_name + '\'' +
                ", pro_id=" + pro_id +
                ", pro_name='" + pro_name + '\'' +
                ", status=" + status +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStu_id() {
        return stu_id;
    }

    public void setStu_id(Integer stu_id) {
        this.stu_id = stu_id;
    }

    public String getStu_name() {
        return stu_name;
    }

    public void setStu_name(String stu_name) {
        this.stu_name = stu_name;
    }

    public Integer getPro_id() {
        return pro_id;
    }

    public void setPro_id(Integer pro_id) {
        this.pro_id = pro_id;
    }

    public String getPro_name() {
        return pro_name;
    }

    public void setPro_name(String pro_name) {
        this.pro_name = pro_name;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }
}
