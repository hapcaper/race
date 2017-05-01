package cn.springmvc.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;



@Controller
@RequestMapping("/ajax")
public class AjaxController {
	@RequestMapping(value = "/test")
	@ResponseBody
    public void testJson(HttpServletRequest  request,HttpServletResponse   response) {
		ArrayList<String> list = new ArrayList<String>();
		list.add("test1");
		list.add("test2");
		list.add("test3");
		String s = JSONObject.toJSONString(list);
		
		try {    // 其实ajax异步请求和同步请求最大的区别就是这里数据的输出，ajax异步请求数据的输出使用了打印输出流对象来将数据输出

		PrintWriter out= response.getWriter();

		   out.print(s);

		}catch (IOException e) {

		//TODO Auto-generated catch block

		e.printStackTrace();

		}

    }

}
