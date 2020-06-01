package com.job.service;

import java.util.List;
import com.job.bean.Admin;

public interface AdminService {
	    public List<Admin> getALLAdmin();
	    //查询单个的
		public Admin  getAdmin(Integer id);
		//增
		public Admin add(Admin Admin);
		//删
		public void delete(Integer id);
		//改
		public Admin update(Admin id);
		public Admin login(String name, String pwd);
		public Admin select(String name);
}
