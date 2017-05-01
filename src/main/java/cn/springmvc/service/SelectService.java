package cn.springmvc.service;

import org.springframework.ui.Model;

public interface SelectService {

	public void changeSelect(Model model, String... menus);
}
