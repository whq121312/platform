package com.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.job.bean.Admin;
import com.job.dao.AdminDao;
import com.job.service.AdminService;
@Service("AdminService")
public class AdminServiceImpl implements AdminService {
    @Autowired
    AdminDao dao;
    public Admin login(String name, String pwd) {

		Admin user = new Admin();
		user = dao.selectOne(new QueryWrapper<Admin>().eq("AdminName", name));
		
		if(user!=null&&user.getAdminPassword().equals(pwd))
			return user;
		return null;
		
	}
	public Admin getAdmin(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public Admin add(Admin Admin) {
		// TODO Auto-generated method stub
		dao.insert(Admin);
		return Admin;
	}

	public void delete(Integer id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	public Admin update(Admin id) {
		// TODO Auto-generated method stub
		dao.updateById(id);
		return id;
	}

	public List<Admin> getALLAdmin() {
		// TODO Auto-generated method stub
		return dao.selectList(null);
	}
	public Admin select(String name) {
		// TODO Auto-generated method stub
		Admin admin1=new Admin();
		admin1= dao.selectOne(new QueryWrapper<Admin>().eq("AdminName", name));
		return admin1;
	}
    
}
