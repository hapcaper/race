package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.Device;
import cn.springmvc.entry.PageDO;
import cn.springmvc.entry.condition.DeviceCondition;
import cn.springmvc.entry.result.ResultDO;
/**
 * 设备处理业务数据
 * @author 李自豪
 *
 */
public interface DeviceService {
	/**
	 * 将一条设备信息插入到数据库中，并通过ResultDO返回插入结果
	 * @param device
	 * @return
	 */
	public int insertDevice(Device device);
	
	public ResultDO<List<Device>> getAllDevice();
	/**
	 * 根据设备名称模糊查询设备列表
	 * @param name
	 * @return
	 */
	public ResultDO<List<Device>> findDeviceByName(String name);
	
	public ResultDO<List<Device>> findDeviceByDepanmentID(int depanmentID);

	
	/**
	 * 修改设备
	 * @param dno
	 * @return
	 */
	public boolean updateDevice(Device device);

	public ResultDO<List<Device>> findDeviceByID(String deviceID);




}
