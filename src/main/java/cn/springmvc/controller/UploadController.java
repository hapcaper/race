package cn.springmvc.controller;//package cn.springmvc.controller;
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
//import javax.servlet.http.HttpServletRequest;
//
//import org.apache.commons.io.FileUtils;
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.ui.ModelMap;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//import org.springframework.web.bind.annotation.RequestParam;
//import org.springframework.web.multipart.MultipartFile;
//
//import cn.springmvc.constance.Constance;
////import cn.springmvc.entry.Depart;
//import cn.springmvc.entry.Device;
////import cn.springmvc.entry.Employee;
//import cn.springmvc.entry.result.ResultDO;
////import cn.springmvc.service.DepartService;
//import cn.springmvc.service.DeviceService;
////import cn.springmvc.service.EmployeeService;
//import cn.springmvc.service.UploadService;
//import cn.springmvc.util.NumberUtil;
//
//@Controller
//@RequestMapping("/manage")
//public class UploadController {
////	@Autowired
////	private EmployeeService employeeService;
////	@Autowired
////	private DeviceService deviceService;
////	@Autowired
////	private DepartService departService;
//	@Autowired
//	private UploadService uploadService;
//
//	@RequestMapping(value = "/toUploadDevice")
//	public String toUploadDevice(Model model) {
//		model.addAttribute("menuSelected1", Constance.DEVICE_MANAGE);
//		model.addAttribute("menuSelected2", Constance.DEVICE_UPLOAD);
//
//		return "manager/uploadDevice";
//	}
//
//	@RequestMapping(value = "/uploadDevice")
//	public String upload(
//			@RequestParam(value = "file", required = false) MultipartFile file,
//			HttpServletRequest request, ModelMap model) {
//		if (request.getSession().getAttribute("user") != null) {
//			System.out.println("开始");
//			String path = request.getSession().getServletContext()
//					.getRealPath("upload");
//			String fileName = file.getOriginalFilename();
//			// String fileName = new Date().getTime()+".jpg";
//			System.out.println(path);
//			File targetFile = new File(path, fileName);
//			if (!targetFile.exists()) {
//				targetFile.mkdirs();
//			}
//
//			// 保存
//			try {
//				file.transferTo(targetFile);
//			} catch (Exception e) {
//				e.printStackTrace();
//			}
//
//			model.addAttribute("fileUrl", request.getContextPath() + "/upload/"
//					+ fileName);
//
////			readFile((Employee) request.getSession().getAttribute("user"),
////					targetFile);
//			return "redirect:/manage/toUploadDevice.do";
//		} else {
//			return "login";
//		}
//
//	}
//
////	public void readFile(Employee e, File file) {
////		
////		uploadService.uploadSingleFile(e, file);
////	}
//
//	/**
//	 * 同时上传多个文件时的处理方案
//	 * 
//	 * @param user
//	 * @param myfiles
//	 * @param request
//	 * @return
//	 * @throws IOException
//	 */
//	@RequestMapping(value = "/add", method = RequestMethod.POST)
//	public String addUser(Employee user, @RequestParam MultipartFile[] myfiles,
//			HttpServletRequest request) throws IOException {
//		// 如果只是上传一个文件，则只需要MultipartFile类型接收文件即可，而且无需显式指定@RequestParam注解
//		// 如果想上传多个文件，那么这里就要用MultipartFile[]类型来接收文件，并且还要指定@RequestParam注解
//		// 并且上传多个文件时，前台表单中的所有<input
//		// type="file"/>的name都应该是myfiles，否则参数里的myfiles无法获取到所有上传的文件
//		for (MultipartFile myfile : myfiles) {
//			if (myfile.isEmpty()) {
//				System.out.println("文件未上传");
//			} else {
//				System.out.println("文件长度: " + myfile.getSize());
//				System.out.println("文件类型: " + myfile.getContentType());
//				System.out.println("文件名称: " + myfile.getName());
//				System.out.println("文件原名: " + myfile.getOriginalFilename());
//				System.out.println("========================================");
//				// 如果用的是Tomcat服务器，则文件会上传到\\%TOMCAT_HOME%\\webapps\\YourWebProject\\WEB-INF\\upload\\文件夹中
//				String realPath = request.getSession().getServletContext()
//						.getRealPath("/WEB-INF/upload");
//				// 这里不必处理IO流关闭的问题，因为FileUtils.copyInputStreamToFile()方法内部会自动把用到的IO流关掉，我是看它的源码才知道的
//				FileUtils.copyInputStreamToFile(myfile.getInputStream(),
//						new File(realPath, myfile.getOriginalFilename()));
//			}
//		}
//		// users.put(user.getUsername(), user);
//		return "redirect:/user/list";
//	}
//
//}
