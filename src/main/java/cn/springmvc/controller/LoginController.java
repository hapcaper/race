package cn.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.Term;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.TeacherService;
import cn.springmvc.service.TermService;

@Controller
@RequestMapping("/")
public class LoginController {
	@Autowired
	private TeacherService teacherService;
	
	@Autowired
	private TermService termService;

	@RequestMapping(value = "toLogin")
	public String tologin() {
		return "/login";
	}

	@RequestMapping(value = "nobodyPage")
	public String nobodyPage() {
		return "/nobody/index";
	}

	@RequestMapping(value = "login")
	public String loginForm(HttpSession session,
			@RequestParam("username") String eno,
			@RequestParam("password") String passwd, Model model) {
		ResultDO<List<Teacher>> resultteacher = this.teacherService.getTeacherByTid(eno);
		ResultDO<List<Term>> resultterm = termService.getMaxTerm();
		if (resultteacher.isSuccess()) {
			Teacher teacher = resultteacher.getResult().get(0);
			Term term = resultterm.getResult().get(0);
			System.out.println(term);
			if (teacher.getPasswrod().equals(passwd)) {
				session.setAttribute("teacher", teacher);
				session.setAttribute("term", term);

				return "redirect:manage/toAddProject.do";
			} else {
				model.addAttribute("errorMessage", "用户名或密码错误，请重新输入");
				model.addAttribute("username", eno);
				return "/login";
			}
		} 
		return "/login";

	}

	@RequestMapping(value = "logOut")
	public String logOut(HttpSession session) {
		session.removeAttribute("teacher");
		session.removeAttribute("term");
		return "/login";

	}

//	@RequestMapping("/regist")
//	public String regist(// @RequestParam(value = "photo", required = false)
//							// MultipartFile file,
//			HttpServletRequest request, Model model, Member member) {
//
//		model.addAttribute("menuSelected1", Constance.USER_MANAGE);
//		model.addAttribute("menuSelected2", Constance.ADD_USER);
//
//		ResultDO<Member> result = this.memberService.insertMember(member);
//		if (!result.isSuccess()) {
//			model.addAttribute("errorMessage", result.getMessage());
//		}
//		return "login";
//	}

}
