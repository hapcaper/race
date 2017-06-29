package cn.springmvc.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import cn.springmvc.entry.Student;
import cn.springmvc.service.StudentService;
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

    @Autowired
    private StudentService studentService;

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
			@RequestParam("who") String who,
			@RequestParam("username") String eno,
			@RequestParam("password") String passwd, Model model) {

        System.out.println("********"+who+"*******");
        if(who.equals("teacher")){
            return teacherLogin(session, eno, passwd, model);
        }else if(who.equals("student")){
            return studentLogin(session, eno, passwd, model);
        }
        return "/login";
	}




    @RequestMapping(value = "logOut")
	public String logOut(HttpSession session) {
	    if(session.getAttribute("teacher")!=null){
            session.removeAttribute("teacher");
        }
        if(session.getAttribute("student")!=null){
	        session.removeAttribute("student");
        }
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





    private String teacherLogin(HttpSession session, @RequestParam("username") String eno,
                                @RequestParam("password") String passwd,
                                Model model) {
        ResultDO<List<Term>> resultterm = termService.getMaxTerm();


        List<Teacher> teacherList = teacherService.findByTidAndPassword(eno,passwd);


        if (teacherList.size()>0) {
            Teacher teacher = teacherList.get(0);
            Term term = resultterm.getResult().get(0);
            session.setAttribute("teacher", teacher);
            session.setAttribute("term", term);

            if(teacher.getStatus()==1)return "redirect:manage/toAddProject.do";
            if(teacher.getStatus()==2)return "redirect:manage/toTeacherWorkList.do";
        } else {
            model.addAttribute("errorMessage", "用户名或密码错误，请重新输入");
            model.addAttribute("username", eno);
            return "/login";
        }
        return "/login";
    }


    private String studentLogin(HttpSession session, @RequestParam("username") String eno, @RequestParam("password") String passwd, Model model) {
        List<Student> studentList = studentService.findByStuNumberAndPassWord(eno,passwd);
        if(studentList.size()>0){
            Student student = studentList.get(0);
            ResultDO<List<Term>> resultterm = termService.getMaxTerm();
            Term term = resultterm.getResult().get(0);
            session.setAttribute("student",student);
            session.setAttribute("term",term);
            return "/student/index";
        }else{
            model.addAttribute("errorMessage", "用户名或密码错误，请重新输入");
            model.addAttribute("username", eno);
            return "/login";
        }
    }

}
