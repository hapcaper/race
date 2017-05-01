package cn.springmvc.entry;

import cn.springmvc.entry.base.BaseDO;

public class Tranfer extends BaseDO{
	private Depanment depanmentID;//部门ID
	private Member mID;//人员ID
	private String tranferName;//部门负责人
	private String tranferDistribution;//部门分配
	private boolean tranferState;//部门状态
	public Depanment getDepanmentID() {
		return depanmentID;
	}
	public void setDepanmentID(Depanment depanmentID) {
		this.depanmentID = depanmentID;
	}
	public Member getmID() {
		return mID;
	}
	public void setmID(Member mID) {
		this.mID = mID;
	}
	public String getTranferName() {
		return tranferName;
	}
	public void setTranferName(String tranferName) {
		this.tranferName = tranferName;
	}
	public String getTranferDistribution() {
		return tranferDistribution;
	}
	public void setTranferDistribution(String tranferDistribution) {
		this.tranferDistribution = tranferDistribution;
	}
	public boolean isTranferState() {
		return tranferState;
	}
	public void setTranferState(boolean tranferState) {
		this.tranferState = tranferState;
	}
	


}
