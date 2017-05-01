package cn.springmvc.entry.condition;

import java.util.Date;
/**
 * 设备条件查询
 * @author guoli
 *
 */
public class DeviceCondition {
	/**
	 * 设备名称
	 */
	private String name;
	/**
	 * 设备所在部门id
	 */
	private int depanemntId;
	/**
	 * 购买时间区间，开始
	 */
	private Date startTime;
	/**
	 * 购买时间区间，结束
	 */
	private Date endTime;
	
	/**
	 * 存放地点
	 */
	private String storageSite;
	/**
	 * 设备负责人
	 */
	private int receiverId;
	private int leaderId;
	public int getLeaderId() {
		return leaderId;
	}
	public void setLeaderId(int leaderId) {
		this.leaderId = leaderId;
	}
	/**
	 * 设备状态
	 */
	private int status;
	/**
	 * 设备领用人
	 */
	private int receiver;
	private float minPrice;
	private float maxPrice;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getDepanmentId() {
		return depanemntId;
	}
	public void setDepanmentId(int depanemntId) {
		this.depanemntId = depanemntId;
	}
	public Date getStartTime() {
		return startTime;
	}
	public void setStartTime(Date startTime) {
		this.startTime = startTime;
	}
	public Date getEndTime() {
		return endTime;
	}
	public void setEndTime(Date endTime) {
		this.endTime = endTime;
	}
	
	
	public int getReceiverId() {
		return receiverId;
	}
	public void setReceiverId(int receiverId) {
		this.receiverId = receiverId;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	
	public int getReceiver() {
		return receiver;
	}
	public void setReceiver(int receiver) {
		this.receiver = receiver;
	}
	public String getStorageSite() {
		return storageSite;
	}
	public void setStorageSite(String storageSite) {
		this.storageSite = storageSite;
	}
	public float getMinPrice() {
		return minPrice;
	}
	public void setMinPrice(float minPrice) {
		this.minPrice = minPrice;
	}
	public float getMaxPrice() {
		return maxPrice;
	}
	public void setMaxPrice(float maxPrice) {
		this.maxPrice = maxPrice;
	}
	

}
