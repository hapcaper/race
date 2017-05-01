package cn.springmvc.entry;

import cn.springmvc.entry.base.BaseDO;

public class Race extends BaseDO{
	private int id ;
	private String rname;
	private int rlevel;
	private int kind;
	private String rteacher;
	private int progress;
	private int result;
	private String group;
	private String tid;
	private String proname;
	private int term;
	private String picture;

	
	@Override
	public String toString() {
		return "Race [id=" + id + ", rname=" + rname + ", rlevel=" + rlevel
				+ ", kind=" + kind + ", rteacher=" + rteacher + ", progress="
				+ progress + ", result=" + result + ", group=" + group
				+ ", tid=" + tid + ", proname=" + proname + ", term=" + term
				+ ", picture=" + picture + "]";
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getRname() {
		return rname;
	}
	public void setRname(String rname) {
		this.rname = rname;
	}
	public int getRlevel() {
		return rlevel;
	}
	public void setRlevel(int rlevel) {
		this.rlevel = rlevel;
	}
	public int getKind() {
		return kind;
	}
	public void setKind(int kind) {
		this.kind = kind;
	}
	public String getRteacher() {
		return rteacher;
	}
	public void setRteacher(String rteacher) {
		this.rteacher = rteacher;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public int getResult() {
		return result;
	}
	public void setResult(int result) {
		this.result = result;
	}
	public String getGroup() {
		return group;
	}
	public void setGroup(String group) {
		this.group = group;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}

}
