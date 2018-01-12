package cn.springmvc.controller;

import cn.springmvc.constance.Constance;
import cn.springmvc.dao.StuProDao;
import cn.springmvc.entry.*;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.*;
import cn.springmvc.util.UploadUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.MultipartConfigElement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by 李自豪 on 2017/6/14.
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


    //    @RequestMapping(value = "/toStudentLogin")
//    public String toStudentLogin(HttpSession session, HttpServletRequest request) {
//
//        return "student/studentLogin";
//    }
    @RequestMapping(value = "/toIndex")
    public String toIndex() {
        return "student/index";
    }


//    @RequestMapping(value = "/studentLogin")
//    public String studentLogin(@RequestParam("stuNumber") String stuNumber, @RequestParam("password") String password, HttpSession session, HttpServletRequest request, Model model) {
//        List<Student> studentList = studentService.findByStuNumberAndPassWord(stuNumber, password);
//        if (studentList.size() <= 0) {
//            model.addAttribute("errorMsg", "用户名或密码错误");
//            return "student/studentLogin";
//        }
//
//        ResultDO<List<Term>> termresult = termService.getMaxTerm();
//        Term currentTerm = termresult.getResult().get(0);
//        Student student = studentList.get(0);
//        session.setAttribute("student", student);
//
//        return "student/studentIndex";
//    }

    @RequestMapping(value = "/toSelectRace")
    public String toSelectRace(Model model) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.APPLY_RACE);

        return "student/selectRace";
    }

    @RequestMapping(value = "/toAddProject")
    public String toAddProject(Model model) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.ADD_PROJECT);
        List<Teacher> teacherList = teacherService.findByStatus(1);
        List<Student> studentList = studentService.findByStatus(1);
        model.addAttribute("studentList", studentList);
        model.addAttribute("teacherList", teacherList);
        return "student/addProject";
    }

    @RequestMapping(value = "/stuAddProject")
    public String stuAddProject(HttpServletRequest request, Model model, @RequestParam("proname") String proname, HttpSession session,
                                @RequestParam("document") MultipartFile document,
                                @RequestParam("personsId") Integer[] personsId,
                                @RequestParam("tId") Integer tId,
                                @RequestParam("description") String description) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.ADD_PROJECT);

        List<Student> stuList = new ArrayList<Student>();
        List<StuPro> stuProList = new ArrayList<StuPro>();
        Project project = new Project();
        int flag = 1;  //判定是否要添加数据库
        if (proname != null && !projectService.getProjectByProname(proname).isSuccess()) {
            project.setProname(proname);
        }
        if (document != null) {
            String docpath = UploadUtil.uploadFile(document, request);
            project.setDocument(docpath);
        }
/////////////////////
        if (personsId != null) {
            for (Integer pid : personsId) {
                Student stu = studentService.findById(pid);
                stuList.add(stu);
                project.setPersons(stu.getStuName() + ",");
                System.out.println("pid : " + pid);
            }
        }
        ////////
        if (tId != null) {
            System.out.println(tId);
        }
        if (description != null) {
            project.setDescription(description);
        }

        //     int sign = projectService.insertProject(project);
//        if(sign!=0){ //添加成功
//
//        }


        return "student/index";

    }

    @RequestMapping(value = "/toMyProjectList")
    public String toMyProjectList(Model model, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.MY_PROJECT_LIST);
        Student student = (Student) session.getAttribute("student");
        List<Teacher> teacherList = new ArrayList<Teacher>();
        List<Project> projectList = projectService.findByStuid(student.getId());
        for (Project aProjectList : projectList) {
            Teacher t = teacherService.findByTid(aProjectList.getTid()).get(0);
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
    public String toMyRaceList(Model model, HttpServletRequest request, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
        Student student = (Student) session.getAttribute("student");
        List<Race> raceList = raceService.findByStuId(student.getId());
        ResultDO<List<Term>> termresult = termService.getAllTerm();
        model.addAttribute("raceList", raceList);
        request.setAttribute("termlist", termresult.getResult());
        return "student/myRaceList";
    }

    @RequestMapping(value = "/toStudentDetail")
    public String toStudentDetail(Model model, HttpSession session) {
        model.addAttribute("menuSelected1", Constance.PERSONAL_CENTER);
        model.addAttribute("menuSelected2", Constance.PERSONAL_MYDATA);

        Student student = (Student) session.getAttribute("student");
        model.addAttribute("stu", student);
        return "student/studentDetail";
    }

    @RequestMapping(value = "/toUpdatePassword")
    public String toUpdatePassword(Model model) {
        model.addAttribute("menuSelected1", Constance.PERSONAL_CENTER);
        model.addAttribute("menuSelected2", Constance.PERSONAL_UPDATEPASSWD);

        return "student/updatePassword";
    }

    @RequestMapping(value = "/updatePassword")
    public String updatePassword(HttpSession session,Model model, @RequestParam("oldPasswd") String oldPasswd,
                                 @RequestParam("newPasswd") String newPasswd) {
        model.addAttribute("menuSelected1", Constance.PERSONAL_CENTER);
        model.addAttribute("menuSelected2", Constance.PERSONAL_UPDATEPASSWD);
        int sign = 0 ;      //是否可以修改密码的标志 默认0与原密码不一致 不可以改
        Student student = (Student) session.getAttribute("student");
        if (student.getPassWord().equals(oldPasswd)){
            student.setPassWord(newPasswd);
            studentService.update(student);
            sign = 1 ;
            model.addAttribute("sign",sign);

            session.setAttribute("student",student);
            return "student/updatePassword";
        }else{
            model.addAttribute("sign",sign);
            return "student/updatePassword";
        }

    }

    @RequestMapping(value = "/toRaceDetail")
    public String toRaceDetail(Model model, @RequestParam("rid") Integer rid) {
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
        System.out.println("rid --" + rid);

        Race race = raceService.getRaceById(rid).getResult().get(0);
        model.addAttribute("race", race);
        return "student/raceDetail";
    }

    @RequestMapping(value = "/addProject")
    public String addProject(Model model, HttpServletRequest request, HttpSession session) {

        return "redirect:/student/toMyProjectList.do";
    }
    @RequestMapping(value = "/toOtherRace")
    public String toOtherRace(Model model){
        model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
        model.addAttribute("menuSelected2", Constance.APPLY_RACE);

        return "student/otherRace";
    }
}
