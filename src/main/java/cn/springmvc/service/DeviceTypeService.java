package cn.springmvc.service;

import java.util.List;

import cn.springmvc.entry.DeviceType;
import cn.springmvc.entry.result.ResultDO;

public interface DeviceTypeService {
	ResultDO<DeviceType> insertDeviceType(DeviceType deviceType);
	ResultDO<List<DeviceType>> getAllDeviceType();
	ResultDO<DeviceType> getDeviceTypeById(int id);
	ResultDO<DeviceType> getDeviceTypeByName(String name);

}
