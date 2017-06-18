package cn.springmvc.entry;

import cn.springmvc.entry.base.BaseDO;
/**
 * 
 * @author hb
 *
 */
public class Teacher {
	private String id;
	private String tid;//教师id
	private String tname;//教师姓名
	private String password ;//密码
    private String description;//描述
    private Integer status; //职务
    private String whoim ;
	@Override
	public String toString() {
		return "Teacher [id=" + id + ", tid=" + tid + ", tname=" + tname
				+ ", password=" + password + ", description=" + description
				+ ", status=" + status + ", whoim=" + whoim + "]";
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
	
}
