package cn.springmvc.controller;

import cn.springmvc.constance.Constance;
import cn.springmvc.entry.*;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.*;
import org.apache.xmlbeans.impl.xb.xsdschema.Public;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
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
    RaceService raceService;
    @Autowired
    TermService termService;
    @Autowired
    TeacherService teacherService;

    @RequestMapping(value = "/toStudentLogin")
    public String toStudentLogin(HttpSession session, HttpServletRequest request) {

        return "student/studentLogin";
    }


    @RequestMapping(value = "/studentLogin")
    public String studentLogin(@RequestParam("stuNumber") String stuNumber, @RequestParam("password") String password, HttpSession session, HttpServletRequest request, Model model) {
        List<Student> studentList = studentService.findByStuNumberAndPassWord(stuNumber, password);
        if (studentList.size() <= 0) {
            model.addAttribute("errorMsg", "用户名或密码错误");
            return "student/studentLogin";
        }

        ResultDO<List<Term>> termresult = termService.getMaxTerm();
        Term currentTerm = termresult.getResult().get(0);
        Student student = studentList.get(0);
        session.setAttribute("student", student);

        return "student/studentIndex";
    }

    @RequestMapping(value = "/toSelectRace")
    public String toSelectRace(Model model) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.APPLY_RACE);

        return "student/selectRace";
    }

    @RequestMapping(value = "/toAddProject")
    public String toAddProject(Model model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.ADD_PROJECT);
        List<Teacher> teacherList = teacherService.findByStatus(1);
        List<Student> studentList = studentService.findByStatus(1);
        model.addAttribute("studentList", studentList);
        model.addAttribute("teacherList", teacherList);
        return "student/addProject";
    }

    @RequestMapping(value = "/addProject")
    public String addProject(Model model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.ADD_PROJECT);

        //TODO

        return "";

    }

    @RequestMapping(value = "/toMyProjectList")
    public String toMyProjectList(Model model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.MY_PROJECT_LIST);
        Student student = (Student) session.getAttribute("student");
        List<Teacher> teacherList = new ArrayList<Teacher>();
        List<Project> projectList = projectService.findByStuid(student.getId());
        for (int i = 0; i < projectList.size(); i++) {
            Teacher t = teacherService.findByTid(projectList.get(i).getTid()).get(0);
            teacherList.add(t);
        }
        model.addAttribute("projectlist", projectList);
        model.addAttribute("teacherList", teacherList);
        return "student/myProjectList";
    }


    @RequestMapping(value = "/toSoftDesignSelectProject")
    public String toSoftDesignSelectProject(Model model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.APPLY_RACE);

        Student student = (Student) session.getAttribute("student");
        Term term = (Term) session.getAttribute("term");
        Race race = new Race();
        race.setProname("软件学院软件设计大赛");
        race.setKind(9);
        race.setTerm(term.getTerm());
        List<Project> projectList = projectService.findByStuid(student.getId());

        model.addAttribute("projectlist", projectList);
        request.setAttribute("race", race);
        return "student/softDesignSelectProject";
    }
    @RequestMapping(value = "/toMyRaceList")
    public String toMyRaceList(Model model, HttpServletRequest request, HttpSession session){
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
        Student student = (Student) session.getAttribute("student");
        List<Race> raceList = raceService.findByStuId(student.getId());
        ResultDO<List<Term>> termresult = termService.getAllTerm();
        model.addAttribute("raceList",raceList);
        request.setAttribute("termlist", termresult.getResult());
        return "student/myRaceList";
    }

    @RequestMapping(value = "/toStudentDetail")
    public String toStudentDetail(Model model, HttpSession session){
        model.addAttribute("menuSelected1", Constance.PERSONAL_CENTER);
        model.addAttribute("menuSelected2", Constance.PERSONAL_MYDATA);

        Student student = (Student) session.getAttribute("student");
        model.addAttribute("stu",student);
        return "student/studentDetail";
    }

    @RequestMapping(value = "/toUpdatePassword")
    public String toUpdatePassword(Model model, HttpSession session){
        model.addAttribute("menuSelected1", Constance.PERSONAL_CENTER);
        model.addAttribute("menuSelected2", Constance.PERSONAL_UPDATEPASSWD);

        return "student/updatePassword";
    }

    @RequestMapping(value = "/toRaceDetail")
    public String toRaceDetail(Model model, HttpSession session,@RequestParam("rid") Integer rid){
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
        System.out.println("rid --"+rid);

        Race race = raceService.getRaceById(rid).getResult().get(0);
        model.addAttribute("race",race);
        return "student/raceDetail";

    }

}
