package cn.springmvc.entry;


public class Teamer{
	private int id;
	private int duty;
	private int progress;
	private String memberid;
	private String membername;
	private int projectid;
	private String projectname;
//	private List<Task> tasks;

	public String getMembername() {
		return membername;
	}
	@Override
	public String toString() {
		return "Teamer [id=" + id + ", duty=" + duty + ", progress=" + progress
				+ ", memberid=" + memberid + ", membername=" + membername
				+ ", projectid=" + projectid + ", projectname=" + projectname
				+ "]";
	}
	public int getProjectid() {
		return projectid;
	}
	public void setProjectid(int projectid) {
		this.projectid = projectid;
	}
	public String getProjectname() {
		return projectname;
	}
	public void setProjectname(String projectname) {
		this.projectname = projectname;
	}
	public void setMembername(String membername) {
		this.membername = membername;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getDuty() {
		return duty;
	}
	public void setDuty(int duty) {
		this.duty = duty;
	}
	public int getProgress() {
		return progress;
	}
	public void setProgress(int progress) {
		this.progress = progress;
	}
	public String getMemberid() {
		return memberid;
	}
	public void setMemberid(String memberid) {
		this.memberid = memberid;
	}
 
}
