package cn.springmvc.service.impl;

import java.util.List;

import cn.springmvc.dao.TeacherDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import cn.springmvc.entry.Teacher;
import cn.springmvc.entry.result.ResultDO;
import cn.springmvc.service.TeacherService;

@Service
@Transactional
public class TeacherServiceImpl implements TeacherService {
	@Autowired
	private TeacherDao teacherDAO;

	@Override
	public ResultDO<List<Teacher>> getTeacherByTid(String tid) {
		ResultDO<List<Teacher>> result = new ResultDO<List<Teacher>>();
		List<Teacher> list = teacherDAO.findByTid(tid);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
			result.setMessage("查询失败");
			
		}
		return result;
	}

	@Override
	public ResultDO<List<Teacher>> getTeacherByStatus(int status) {
		ResultDO<List<Teacher>> result = new ResultDO<List<Teacher>>();
		List<Teacher> list = teacherDAO.findByStatus(status);
		result.setResult(list);
		result.setSuccess(true);
		if(result.getResult()==null){
			result.setSuccess(false);
			result.setMessage("查询失败");
		}
		return result;
	}

    @Override
    public List<Teacher> findByTidAndPassword(String tid, String password) {
        return teacherDAO.findByTidAndPassword(tid,password);
    }

    @Override
    public List<Teacher> findByTid(String tid) {
        return teacherDAO.findByTid(tid);
    }

    @Override
    public List<Teacher> findByStatus(Integer status) {
        return teacherDAO.findByStatus(status);
    }

    @Override
    public int insert(Teacher pojo) {
        return teacherDAO.insert(pojo);
    }

    @Override
    public int insertSelective(Teacher pojo) {
        return teacherDAO.insertSelective(pojo);
    }

    @Override
    public int insertList(List<Teacher> pojo) {
        return teacherDAO.insertList(pojo);
    }

    @Override
    public int update(Teacher pojo) {
        return teacherDAO.update(pojo);
    }

    public ResultDO<List<Integer>> getMaxWorkListByTeacherList(List<Teacher> tlist){
		
		return null;
	}

}
