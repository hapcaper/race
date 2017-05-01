package cn.springmvc.entry;

import cn.springmvc.entry.base.BaseDO;
/**
 * 
 * @author hb
 *
 */
public class Depanment extends BaseDO {
	private int depanmentID ;//部门ID
	private String depanmentName;//部门名称
	private int depanmentRoom;//部门房间
	private String depanmentDescribe;//部门描述
	

	public String getDepanmentName() {
		return depanmentName;
	}
	public void setDepanmentName(String depanmentName) {
		this.depanmentName = depanmentName;
	}
	public int getDepanmentID() {
		return depanmentID;
	}
	public void setDepanmentID(int depanmentID) {
		this.depanmentID = depanmentID;
	}

	public int getDepanmentRoom() {
		return depanmentRoom;
	}
	public void setDepanmentRoom(int depanmentRoom) {
		this.depanmentRoom = depanmentRoom;
	}
	public String getDepanmentDescribe() {
		return depanmentDescribe;
	}
	public void setDepanmentDescribe(String depanmentDescribe) {
		this.depanmentDescribe = depanmentDescribe;
	}
	
	@Override
	public String toString() {
		return "Depanment [depanmentID=" + depanmentID + ", depanmentName="
				+ depanmentName + ", depanmentRoom=" + depanmentRoom
				+ ", depanmentDescribe=" + depanmentDescribe + "]";
	}
	
	
}
