package cn.springmvc.entry;

import cn.springmvc.entry.base.BaseDO;

public class Work extends BaseDO{
	private int id;
	private int term;
	private String tid;
	private float work;
	private String proname;
	@Override
	public String toString() {
		return "Work [id=" + id + ", term=" + term + ", tid=" + tid + ", work="
				+ work + ", proname=" + proname + "]";
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getTerm() {
		return term;
	}
	public void setTerm(int term) {
		this.term = term;
	}
	public String getTid() {
		return tid;
	}
	public void setTid(String tid) {
		this.tid = tid;
	}
	public float getWork() {
		return work;
	}
	public void setWork(float work) {
		this.work = work;
	}
	public String getProname() {
		return proname;
	}
	public void setProname(String proname) {
		this.proname = proname;
	}

}
