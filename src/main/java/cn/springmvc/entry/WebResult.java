package cn.springmvc.entry;

import java.util.List;
import java.util.Map;


public class WebResult {
	private boolean success = false;
	
	private Exception exception;
	public void isOK(){
		this.success = true;
	}
	public boolean isSuccess() {
		return success;
	}
	public void setSuccess(boolean success) {
		this.success = success;
	}
	private Object data;
	private List<Map<String,Object>> tableData;
	
	public Object getData() {
		return data;
	}
	public void setData(Object data) {
		this.data = data;
	}
	public Exception getException() {
		return exception;
	}
	public void setException(Exception exception) {
		this.exception = exception;
	}
	public List<Map<String, Object>> getTableData() {
		return tableData;
	}
	public void setTableData(List<Map<String, Object>> tableData) {
		this.tableData = tableData;
	}
	
	

}
