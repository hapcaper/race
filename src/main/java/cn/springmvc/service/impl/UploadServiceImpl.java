package cn.springmvc.service.impl;//package cn.springmvc.service.impl;
//
//import java.io.BufferedReader;
//import java.io.File;
//import java.io.FileNotFoundException;
//import java.io.FileReader;
//import java.io.IOException;
//import java.text.ParseException;
//import java.text.SimpleDateFormat;
//import java.util.Date;
//import java.util.List;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Service;
//import org.springframework.transaction.annotation.Transactional;
//
//import cn.springmvc.entry.Depart;
//import cn.springmvc.entry.Device;
//import cn.springmvc.entry.Employee;
//import cn.springmvc.entry.Member;
//import cn.springmvc.entry.result.ResultDO;
//import cn.springmvc.service.DepanmentService;
//import cn.springmvc.service.DeviceService;
//import cn.springmvc.service.MemberService;
//import cn.springmvc.service.UploadService;
//import cn.springmvc.util.NumberUtil;
//
//@Transactional
//@Service
//public class UploadServiceImpl implements UploadService{
//	@Autowired
//	private MemberService memberService;
//	@Autowired
//	private DeviceService deviceService;
//	@Autowired
//	private DepanmentService depanmentService;
//
//	@Override
//	public boolean uploadSingleFile(Employee e, File file) {
//		//File file = new File(filePath);
//				if (file.exists()) {
//					try {
//						BufferedReader br = new BufferedReader(new FileReader(file));
//						String line = "";
//						while ((line = br.readLine()) != null) {
//							String[] lineArray = line.split(",");
//							Device device = new Device();
//							device.setStatus(1);
//							device.setDno(lineArray[0]);
//							device.setName(lineArray[1]);
//							device.setTypeId(lineArray[2]);
//							device.setStateOwned(lineArray[3]);
//							device.setModel(lineArray[4]);
//							//device.setSpec(lineArray[5]);
//							String buyTime = lineArray[5];
//							if(buyTime.length()>6){
//								SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//								Date time = null;
//								try {
//									time = sdf.parse(buyTime);
//								} catch (ParseException e3) {
//									// TODO Auto-generated catch block
//									e3.printStackTrace();
//								}
//								device.setBuyTime(time);
//							}
//							if (lineArray[6] != null
//									&& !"".equals(lineArray[6])
//									&& (NumberUtil.isIntegerNumber(lineArray[6]) || NumberUtil
//											.isFloatPointNumber(lineArray[6]))) {
//								device.setSinglePrice(Float.parseFloat(lineArray[6]));
//							} else {
//								device.setSinglePrice(0);
//							}
//							if (lineArray[7] != null
//									&& !"".equals(lineArray[7])
//									&& (NumberUtil.isIntegerNumber(lineArray[7]) || NumberUtil
//											.isFloatPointNumber(lineArray[7]))) {
//								device.setTotlePrice(Float.parseFloat(lineArray[7]));
//							} else {
//								device.setTotlePrice(0);
//							}
//							device.setCoutryCode(lineArray[8]);
//							//设置出厂日期9
//							String factoryTime = lineArray[9];
//							
//							if(factoryTime.length()>6){
//								Date factoryDate = null;
//								try {
//									SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
//									factoryDate = sdf.parse(factoryTime);
//								} catch (ParseException e3) {
//									// TODO Auto-generated catch block
//									e3.printStackTrace();
//								}
//								device.setFactoryDate(factoryDate);
//							}
//							
//							
//							//生产厂家
//							device.setManufacturer(lineArray[10]);
//							// 处理领用人10
//							if(lineArray[11]!=null&&!"".equals(lineArray[11])){
//								ResultDO<List<Member>> listResult = this.memberService
//										.findMemberByName(lineArray[11]);
//								if (listResult.isSuccess()&&listResult.getResult()!=null) {
//									device.setLeaderId(listResult.getResult()
//											.getId());
//									device.setReceiverId(listResult.getResult()
//											.getId());
//								} else {
//									Employee employee = new Employee();
//									employee.setName(lineArray[11]);
//									employee.setEno(lineArray[11]);
//									
//									ResultDO<Employee> r = this.employeeService
//											.insertEmployee(employee);
//									device.setLeaderId(r.getResult().getId());
//									device.setReceiverId(r.getResult().getId());
//								}
//							}
//							
//							// 处理所属部门12
//							
//							ResultDO<List<Depart>> departList = this.departService
//									.findDepartByName(lineArray[12]);
//							if (departList.isSuccess()
//									&& departList.getResult().size() > 0) {
//								device.setDepartId(departList.getResult().get(0)
//										.getId());
//							} else {
//								Depart d = new Depart();
//								d.setName(lineArray[12]);
//								d.setCreateTime(new Date());
//								d.setStatus(0);
//								d.setParentId(2);
//								ResultDO<Depart> r = this.departService.insertDepart(d);
//								device.setDepartId(r.getResult().getId());
//							}
//							// 处理存放地点12
//							if(lineArray.length<13){
//								device.setStorageSite("");
//							}else{
//								device.setStorageSite(lineArray[13]);
//							}
//							
//							this.deviceService.insertDevice(e, device);
//						}
//					} catch (FileNotFoundException e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					} catch (IOException e2) {
//						// TODO Auto-generated catch block
//						e2.printStackTrace();
//					}
//				}
//				return true;
//	}
//
//}
