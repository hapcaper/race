package cn.springmvc.entry;

import cn.springmvc.entry.base.BaseDO;

public class Project extends BaseDO{
	private Integer id;
	private String proname;
	private String description;
	private String document;
	private Integer progress;
	private Integer number;
	private String headman;
	private String persons;
	private Integer status;
	private String tid;
	@Override
	public String toString() {
		return "Project [id=" + id + ", proname=" + proname + ", description="
				+ description + ", document=" + document + ", progress="
				+ progress + ", number=" + number + ", headman=" + headman
				+ ", persons=" + persons + ", status=" + status + ", tid="
				+ tid + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getDocument() {
		return document;
	}
	public void setDocument(String document) {
		this.document = document;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}
	public String getHeadman() {
		return headman;
	}
	public void setHeadman(String headman) {
		this.headman = headman;
	}
	public String getPersons() {
		return persons;
	}
	public void setPersons(String persons) {
		this.persons = persons;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}

	
}
