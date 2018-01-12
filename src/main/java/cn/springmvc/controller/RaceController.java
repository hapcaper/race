package cn.springmvc.controller;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.springmvc.constance.Constance;
import cn.springmvc.entry.Project;
import cn.springmvc.entry.Race;
import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.Term;
import cn.springmvc.entry.Work;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.ProjectService;
import cn.springmvc.service.RaceService;
import cn.springmvc.service.TeacherService;
import cn.springmvc.service.TermService;
import cn.springmvc.service.WorkService;

@Controller
@RequestMapping("/manage")
public class RaceController {

	@Autowired
	TeacherService teacherService;

	@Autowired
	ProjectService projectService;

	@Autowired
	WorkService workService;

	@Autowired
	RaceService raceService;

	@Autowired
	TermService termService;

	@RequestMapping("/toAddProject")
	public String toAddProject(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.ADD_PROJECT);

		return "manager/addProject";
	}

	@RequestMapping("/addProject")
	public String addProject(Model model, HttpServletRequest request,
			HttpSession session) throws UnsupportedEncodingException {
		Project project = new Project();

		// 1.建工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// 2.创建解析器
		ServletFileUpload fileupload = new ServletFileUpload(factory);

		// 3.解析request
		List<FileItem> list = null;
		try {
			list = fileupload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}

		for (FileItem f : list) {
			if (!f.isFormField()) {
				String name = f.getName();
				try {
					InputStream input = f.getInputStream();
					String address = session.getServletContext().getRealPath(
							"img/document");
					FileOutputStream output = new FileOutputStream(address
							+ "/" + name);
					new Tools().Input2Output(input, output);
					project.setDocument("img/document/" + name);
					input.close();
					output.close();
				} catch (IOException e) {
					e.printStackTrace();
				}

			} else {
				if (f.getFieldName().equals("proname")) {
					project.setProname(f.getString("utf-8"));
				} else if (f.getFieldName().equals("persons")) {
					project.setPersons(f.getString("utf-8"));
				} else if (f.getFieldName().equals("description")) {
					project.setDescription(f.getString("utf-8"));
				}
				// device.setDeviceName(f.getString());
			}
		}
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		project.setTid(teacher.getTid());
		System.out.println(project);
		projectService.insertProject(project);

		return "redirect:/manage/toMyProjectList.do";
	}

	@RequestMapping("/toMyProjectList")
	public String toMyProjectList(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.MY_PROJECT_LIST);
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		ResultDO<List<Project>> result = projectService.getProjectByTid(teacher
				.getTid());
		List<Project> projectlist = result.getResult();
		List<Work> worklist = new ArrayList<Work>();
		float f = workService.getMaxWorkByTeacher(teacher, term.getTerm());
		for (Project p : projectlist) {
			Work w = workService.getMostWorkByProject(term.getTerm(), p).getResult();
			System.out.println(w);
			worklist.add(w);
		}
		model.addAttribute("projectlist", projectlist);
		model.addAttribute("worklist", worklist);
		request.setAttribute("f", f);
		return "manager/myProjectList";
	}

	@RequestMapping("/toSelectRace")
	public String toSelectRace(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.APPLY_RACE);

		return "manager/selectRace";
	}

	@RequestMapping("/toSoftDesignSelectProject")
	public String toSoftDesignSelectProject(Model model,
			HttpServletRequest request, HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.APPLY_RACE);

		Teacher teacher = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		Race race = new Race();
		race.setProname("软件学院软件设计大赛");
		race.setKind(9);
		race.setTerm(term.getTerm());
		race.setTid(teacher.getTid());
		race.setRteacher(teacher.getTname());
		ResultDO<List<Project>> result = projectService.getProjectByTid(teacher.getTid());
		model.addAttribute("projectlist", result.getResult());
		request.setAttribute("race", race);
		return "manager/softDesignSelectProject";
	}

	/**
	 * 添加软件设计大赛  //TODO 待改进
	 * @param model
	 * @param request
	 * @param session
	 * @return
	 */
	@RequestMapping("/addRace")
	public String addRace(Model model, HttpServletRequest request,
			HttpSession session) {
		Teacher t = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		List<String> proname = new ArrayList<String>();
		// 1.建工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// 2.创建解析器
		ServletFileUpload fileupload = new ServletFileUpload(factory);

		// 3.解析request
		List<FileItem> list = null;
		try {
			list = fileupload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		for (FileItem f : list) {
			try {
				proname.add(f.getString("utf-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		for (String s : proname) {
			Race r = new Race();
			r.setProname(s);
			r.setRname("软件设计大赛");
			r.setRlevel(1);
			r.setKind(9);
			r.setRteacher(t.getTname());
			r.setProgress(1);
			r.setTid(t.getTid());
			r.setTerm(term.getTerm());
			raceService.insertRace(r);
		}

		return "redirect:/manage/toMyRaceList.do";
	}
	
	@RequestMapping("addOtherRace")
	public String addOtherRace(Model model, HttpServletRequest request,
			HttpSession session){
		Teacher t = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		List<String> proname = new ArrayList<String>();
		Race r = (Race) session.getAttribute("prerace");
		// 1.建工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// 2.创建解析器
		ServletFileUpload fileupload = new ServletFileUpload(factory);

		// 3.解析request
		List<FileItem> list = null;
		try {
			list = fileupload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}
		for (FileItem f : list) {
			try {
				proname.add(f.getString("utf-8"));
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
		}
		for (String s : proname) {
			r.setProname(s);
			r.setRteacher(t.getTname());
			r.setProgress(1);
			r.setTid(t.getTid());
			r.setTerm(term.getTerm());
			raceService.insertRace(r);
		}
		
		
		return "redirect:/manage/toMyRaceList.do";
	}

	@RequestMapping("/toOtherSelectProject")
	public String toOtherSelectProject(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.APPLY_RACE);
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		String rname = request.getParameter("rname");
		String rlevel = request.getParameter("rlevel");
		String kind = request.getParameter("kind");
		System.out.println(rname + "!!!" + rlevel + "####" + kind);
		Race race = new Race();
		race.setRlevel(Integer.parseInt(rlevel));
		race.setKind(Integer.parseInt(kind));
		race.setRname(rname);
		session.setAttribute("prerace", race);
		ResultDO<List<Project>> presult = projectService
				.getProjectByTid(teacher.getTid());
		request.setAttribute("projectlist", presult.getResult());
		return "manager/otherSelectProject";
	}

	@RequestMapping("/toMyRaceList")
	public String toMyRaceList(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		ResultDO<List<Race>> result = raceService.getRaceByTermAndTid(
				term.getTerm(), teacher.getTid());
		ResultDO<List<Term>> termresult = termService.getAllTerm();
		List<Race> racelist = result.getResult();
		List<Project> prolist = new ArrayList<Project>();
		for (Race r : racelist) {
			Project p = projectService.getProjectByProname(r.getProname())
					.getResult().get(0);
			prolist.add(p);
		}
		request.setAttribute("termlist", termresult.getResult());
		request.setAttribute("racelist", racelist);
		request.setAttribute("prolist", prolist);
		return "manager/myRaceList";

	}
	@RequestMapping("/queryMyRace")
	public String queryMyRace(Model model, HttpServletRequest request,
			HttpSession session,@Param("t")int t){
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		ResultDO<List<Race>> result = raceService.getRaceByTermAndTid(
				t, teacher.getTid());
		ResultDO<List<Term>> termresult = termService.getAllTerm();
		List<Race> racelist = result.getResult();
		List<Project> prolist = new ArrayList<Project>();
		for (Race r : racelist) {
			Project p = projectService.getProjectByProname(r.getProname())
					.getResult().get(0);
			prolist.add(p);
		}
		request.setAttribute("termlist", termresult.getResult());
		request.setAttribute("racelist", racelist);
		request.setAttribute("prolist", prolist);
		return "manager/myRaceList";
		
	}

	@RequestMapping("/toTeacherWorkList")
	public String toTeacherWorkList(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.TEACHER_WORKT);
		Term term = (Term) session.getAttribute("term");
		ResultDO<List<Teacher>> result = teacherService.getTeacherByStatus(1);
		ResultDO<List<Term>> termResult = termService.getAllTerm();
		List<Teacher> tlist = result.getResult();
		List<Float> wlist = new ArrayList<Float>();
		for (Teacher t : tlist) {
			float f = workService.getMaxWorkByTeacher(t, term.getTerm());
			wlist.add(f);
		}
		List ts = termResult.getResult();
		Collections.reverse(ts);
		request.setAttribute("termlist", ts);
		request.setAttribute("tlist", tlist);
		request.setAttribute("wlist", wlist);
		return "leader/teacherWorkList";
	}
	@RequestMapping("/queryTeacherWorkList")
	public String queryTeacherWorkList(Model model, HttpServletRequest request,
			HttpSession session,@Param("t")int t){
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.TEACHER_WORKT);
		ResultDO<List<Teacher>> result = teacherService.getTeacherByStatus(1);
		ResultDO<List<Term>> termResult = termService.getAllTerm();
		List<Teacher> tlist = result.getResult();
		List<Float> wlist = new ArrayList<Float>();
		for (Teacher te : tlist) {
			float f = workService.getMaxWorkByTeacher(te, t);
			wlist.add(f);
		}
		request.setAttribute("termlist", termResult.getResult());
		request.setAttribute("tlist", tlist);
		request.setAttribute("wlist", wlist);
		return "leader/teacherWorkList";
		
	}

	@RequestMapping("/toAllRaceList")
	public String toAllRaceList(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.ALL_RACE_LIST);
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		Term term = (Term) session.getAttribute("term");
		ResultDO<List<Race>> result = raceService.getAllRaceByTerm(term
				.getTerm());
		ResultDO<List<Term>> termresult = termService.getAllTerm();
		List<Race> racelist = result.getResult();
		List<Project> prolist = new ArrayList<Project>();
		for (Race r : racelist) {
			Project p = projectService.getProjectByProname(r.getProname())
					.getResult().get(0);
			prolist.add(p);
		}
		List ts = termresult.getResult();
        Collections.reverse(ts);
		request.setAttribute("termlist", ts);
		request.setAttribute("racelist", racelist);
		request.setAttribute("prolist", prolist);
		return "leader/allRaceList";
	}
	@RequestMapping("/queryAllRace")
	public String queryAllRace(Model model, HttpServletRequest request,
			HttpSession session,@Param("t")int t){
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.ALL_RACE_LIST);
		ResultDO<List<Race>> result = raceService.getAllRaceByTerm(t);
		ResultDO<List<Term>> termresult = termService.getAllTerm();
		List<Race> racelist = result.getResult();
		List<Project> prolist = new ArrayList<Project>();
		for (Race r : racelist) {
			Project p = projectService.getProjectByProname(r.getProname())
					.getResult().get(0);
			prolist.add(p);
		}
		request.setAttribute("termlist", termresult.getResult());
		request.setAttribute("racelist", racelist);
		request.setAttribute("prolist", prolist);
		return "leader/allRaceList";
		
	}

	@RequestMapping("/toAward")
	public String toAward(Model model, HttpServletRequest request,
			HttpSession session, @RequestParam("rid") String rid) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.ALL_RACE_LIST);
		Teacher teacher = (Teacher) session.getAttribute("teacher");
		if (rid == null) {
			System.out.println("RID == NULL");
		}
		int id = Integer.valueOf(rid);
		ResultDO<List<Race>> result = raceService.getRaceById(id);
		Race r = result.getResult().get(0);
		Project p = projectService.getProjectByProname(r.getProname())
				.getResult().get(0);
		System.out.println(r + "/*-/*-/*-+++" + p);
		session.setAttribute("race", r);
		session.setAttribute("project", p);
		return "leader/award";
	}

	@RequestMapping("/award")
	public String award(Model model, HttpServletRequest request,
			HttpSession session, @RequestParam("raceid") int raceid,@RequestParam("result") int result) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.ALL_RACE_LIST);
		Term term = (Term) session.getAttribute("term");
		Race race = (Race) session.getAttribute("race");
		Project project = (Project) session.getAttribute("project");
		Teacher t = teacherService.getTeacherByTid(race.getTid()).getResult()
				.get(0);

		System.out.println(race + "/---------------/");
		raceService.updateRaceResult(raceid, result);
		workService.addWork(race, project, t, term.getTerm());
		return "redirect:/manage/toAllRaceList.do";

	}

	@RequestMapping("/toOtherRace")
	public String toOtherRace(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.APPLY_RACE);

		return "manager/otherRace";
	}

	@RequestMapping("/endTerm")
	public String endTerm(Model model, HttpServletRequest request,
			HttpSession session) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.TEACHER_WORKT);
		Term term = (Term) session.getAttribute("term");
		int a = term.getTerm();
		term.setTerm(a + 1);
		int x = termService.insertTerm(term);
		// term = termService.getMaxTerm().getResult().get(0);
		session.setAttribute("term", term);
		return "redirect:/manage/toTeacherWorkList.do";
	}

	@RequestMapping("/toRaceDetail")
	public String toRaceDetail(Model model, HttpServletRequest request,
			HttpSession session, @RequestParam("rid") int rid) {
		model.addAttribute("menuSelected1", Constance.RACE_MANAGE);
		model.addAttribute("menuSelected2", Constance.MY_RACE_LIST);
		ResultDO<List<Race>> rresult = raceService.getRaceById(rid);
		Race race = rresult.getResult().get(0);
		ResultDO<List<Project>> presult = projectService
				.getProjectByProname(race.getProname());
		Project project = presult.getResult().get(0);
		session.setAttribute("race", race);
		session.setAttribute("project", project);
		return "manager/raceDetail";
	}

	@RequestMapping("/uploadPicture")
	public String uploadPicture(Model model, HttpServletRequest request,
			HttpSession session) {
		Race race = (Race) session.getAttribute("race");
		// 1.建工厂
		DiskFileItemFactory factory = new DiskFileItemFactory();

		// 2.创建解析器
		ServletFileUpload fileupload = new ServletFileUpload(factory);

		// 3.解析request
		List<FileItem> list = null;
		try {
			list = fileupload.parseRequest(request);
		} catch (FileUploadException e) {
			e.printStackTrace();
		}

		for (FileItem f : list) {
			if (!f.isFormField()) {
				String name = f.getName();
				try {
					InputStream input = f.getInputStream();
					String address = session.getServletContext().getRealPath(
							"img/picture");
					FileOutputStream output = new FileOutputStream(address
							+ "/" + name);
					new Tools().Input2Output(input, output);
					race.setPicture("img/picture/" + name);
					input.close();
					output.close();
				} catch (IOException e) {
					e.printStackTrace();
				}

			}
		}
		raceService.updateRace(race);
		return "redirect:/manage/toRaceDetail.do?rid=" + race.getId();

	}


}
