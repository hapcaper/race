package cn.springmvc.entry;

import java.sql.Date;

import cn.springmvc.entry.base.BaseDO;


public class Device extends BaseDO{
	private String deviceID;
	private String deviceName;
	private long price;
	private int warranty;
	private int user;
	private int damage;
	private Date buyTime;
	private String memberID;
	private int status ;
	private int depanmentID ;
	private String picture;
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getDeviceID() {
		return deviceID;
	}
	public void setDeviceID(String deviceID) {
		this.deviceID = deviceID;
	}
	public String getDeviceName() {
		return deviceName;
	}
	public void setDeviceName(String deviceName) {
		this.deviceName = deviceName;
	}
	public long getPrice() {
		return price;
	}
	public void setPrice(long price) {
		this.price = price;
	}
	public int getWarranty() {
		return warranty;
	}
	public void setWarranty(int warranty) {
		this.warranty = warranty;
	}
	public int getUser() {
		return user;
	}
	public void setUser(int user) {
		this.user = user;
	}
	public int getDamage() {
		return damage;
	}
	public void setDamage(int damage) {
		this.damage = damage;
	}
	public Date getBuyTime() {
		return buyTime;
	}
	public void setBuyTime(Date buyTime) {
		this.buyTime = buyTime;
	}
	public String getMemberID() {
		return memberID;
	}
	public void setMemberID(String memberID) {
		this.memberID = memberID;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String picture) {
		this.picture = picture;
	}
	public int getDepanmentID() {
		return depanmentID;
	}
	public void setDepanmentID(int depanmentID) {
		this.depanmentID = depanmentID;
	}
	@Override
	public String toString() {
		return "Device [deviceID=" + deviceID + ", deviceName=" + deviceName
				+ ", price=" + price + ", warranty=" + warranty + ", user="
				+ user + ", damage=" + damage + ", buyTime=" + buyTime
				+ ", memberID=" + memberID + ", status=" + status
				+ ", depanmentID=" + depanmentID + ", picture=" + picture + "]";
	}
	
	
	
}
