package cn.springmvc.entry;

/**
 * Created by ASUS on 2017/4/30.
 */
public class User {
    private String id;
    private String tid;//用户id
    private String tname;//用户姓名
    private String password;//密码
    private String description;//描述
    private int status; //状态
    private String whoim;
    private int identity;//身份

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", tid='" + tid + '\'' +
                ", tname='" + tname + '\'' +
                ", password='" + password + '\'' +
                ", description='" + description + '\'' +
                ", status=" + status +
                ", whoim='" + whoim + '\'' +
                ", identity=" + identity +
                '}';
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }


    public String getWhoim() {
        return whoim;
    }

    public void setWhoim(String whoim) {
        this.whoim = whoim;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getTid() {
        return tid;
    }

    public void setTid(String tid) {
        this.tid = tid;
    }

    public String getTname() {
        return tname;
    }

    public void setTname(String tname) {
        this.tname = tname;
    }

    public String getPasswrod() {
        return password;
    }

    public void setPasswrod(String password) {
        this.password = password;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getIdentity() {
        return identity;
    }

    public void setIdentity(int identity) {
        this.identity = identity;
    }
}
