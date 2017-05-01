package cn.springmvc.entry;

import java.util.Date;

import cn.springmvc.entry.base.BaseDO;
/**
 * 
 * @author hb
 *
 */
public class Member extends BaseDO{
	private String mid;//用户ID
	private String name;//用户姓名
	private String gender="男";//用户性别
	private String telphone;//用户电话
	private String photoPath;//用户照片路径
	private String passwd="123456";//密码
	private String professional;//专业
	private String classes;//班级
	private String address;//地址
	private Date intime;//进入时间
	private Date outtime;//退出时间
	private int duty;//职务
	private int depanmentId;//部门id
	private Depanment depanment;//部门
	private int work;
	
	public String getMid() {
		return mid;
	}
	public void setMid(String  mid) {
		this.mid = mid;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getTelphone() {
		return telphone;
	}
	public void setTelphone(String telphone) {
		this.telphone = telphone;
	}
	public String getPhotoPath() {
		return photoPath;
	}
	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}
	public String getPasswd() {
		return passwd;
	}
	public void setPasswd(String passwd) {
		this.passwd = passwd;
	}
	public String getProfessional() {
		return professional;
	}
	public void setProfessional(String professional) {
		this.professional = professional;
	}
	public String getClasses() {
		return classes;
	}
	public void setClasses(String classes) {
		this.classes = classes;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Date getIntime() {
		return intime;
	}
	public void setIntime(Date intime) {
		this.intime = intime;
	}
	public Date getOuttime() {
		return outtime;
	}
	public void setOuttime(Date outtime) {
		this.outtime = outtime;
	}

	public int getDuty() {
		return duty;
	}
	public void setDuty(int duty) {
		this.duty = duty;
	}
	public int getDepanmentId() {
		return depanmentId;
	}
	public void setDepanmentId(int depanmentId) {
		this.depanmentId = depanmentId;
	}
	public Depanment getDepanment() {
		return depanment;
	}
	public void setDepanment(Depanment depanment) {
		this.depanment = depanment;
	}
	@Override
	public String toString() {
		return "Member [mid=" + mid + ", name=" + name + ", gender=" + gender
				+ ", telphone=" + telphone + ", photoPath=" + photoPath
				+ ", passwd=" + passwd + ", professional=" + professional
				+ ", classes=" + classes + ", address=" + address + ", intime="
				+ intime + ", outtime=" + outtime + ", duty=" + duty
				+ ", depanmentId=" + depanmentId + ", depanment=" + depanment
				+ "]";
	}
	public int getWork() {
		return work;
	}
	public void setWork(int work) {
		this.work = work;
	}

}
