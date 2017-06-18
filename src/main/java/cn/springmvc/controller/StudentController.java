package cn.springmvc.controller;

import cn.springmvc.entry.Student;
import cn.springmvc.entry.Term;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.ProjectService;
import cn.springmvc.service.RaceService;
import cn.springmvc.service.StudentService;
import cn.springmvc.service.TermService;
import org.apache.xmlbeans.impl.xb.xsdschema.Public;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by ASUS on 2017/6/14.
 */
@Controller
@RequestMapping("/student")
public class StudentController {
    @Autowired
    StudentService studentService;
    @Autowired
    ProjectService projectService;
    @Autowired
    RaceService raceService ;
    @Autowired
    TermService termService ;

    @RequestMapping(value = "/toStudentLogin")
    public String toStudentLogin(HttpSession session , HttpServletRequest request){

        return "student/studentLogin";
    }


    @RequestMapping(value = "/studentLogin")
    public String studentLogin(@RequestParam("stuNumber") String stuNumber , @RequestParam("password") String password, HttpSession session , HttpServletRequest request , Model model){
        List<Student> studentList = studentService.findByStuNumberAndPassWord(stuNumber,password);
        if(studentList.size()<=0){
            model.addAttribute("errorMsg","用户名或密码错误");
            return "student/studentLogin";
        }

        ResultDO<List<Term>> termresult = termService.getMaxTerm();
        Term currentTerm = termresult.getResult().get(0);
        Student student = studentList.get(0);
        session.setAttribute("student",student);

        return "student/studentIndex";
    }

    @RequestMapping(value = "/toSelectRace")
    public String toSelectRace(HttpServletRequest request , HttpSession session){
        //TODO


        return "student/studentToSelectRace";
    }

    public String selectRace(HttpServletRequest request , HttpSession session){
        //TODO


        return "";
    }


}
