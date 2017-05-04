package cn.springmvc.entry;

/**
 * Created by ASUS on 2017/4/30.
 */
public class User {
    private Integer id;//id
    private String email;//用户id
    private String uname;//用户姓名
    private String password;//密码
    private String description;//描述
    private Integer status; //状态
    private Integer identity;//身份

    public User() {
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", email='" + email + '\'' +
                ", uname='" + uname + '\'' +
                ", password='" + password + '\'' +
                ", description='" + description + '\'' +
                ", status=" + status +
                ", identity=" + identity +
                '}';
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
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
