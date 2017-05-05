package cn.springmvc.service;

import cn.springmvc.entry.Project;
import cn.springmvc.entry.Race;
import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.Work;
import cn.springmvc.entry.result.ResultDO;

import java.util.List;

/**
 * Created by ASUS on 2017/5/4.
 */
public interface WorkService {

    public ResultDO<List<Work>> getWorkByTid(String tid);

    ResultDO<List<Work>> getWorkByTerm(int term);
    public ResultDO<Work> getMostWorkByProject(int term, Project project);

    public int addWork(Race race, Project project, Teacher teacher, int term);

    public float getMaxWorkByTeacher(Teacher teacher,int term);
}
