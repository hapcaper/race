package cn.springmvc.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import cn.springmvc.service.SelectService;
@Service("selectService")

public class SelectServiceImpl implements SelectService{

	@Override
	public void changeSelect(Model model,String ... menus) {
		int i=0;
		for(String menu:menus){
			i++;
			model.addAttribute("menuSelected"+i,menu);  
		}
	}

}
