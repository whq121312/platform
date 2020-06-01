package com.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.job.bean.User;
import com.job.dao.UserDao;
import com.job.service.UserService;

@Service("UserService")
public class UserServiceImpl implements UserService{
	@Autowired
    UserDao dao;
	public List<User> getALLUser() {
		// TODO Auto-generated method stub
		return dao.selectList(null);
	}

	public User getAdmin(Integer id) {
		// TODO Auto-generated method stub
		return dao.selectById(id);
	}

	public User add(User User) {
		// TODO Auto-generated method stub
		dao.insert(User);
		return User;
	}

	public void delete(Integer id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}

	public User update(User id) {
		// TODO Auto-generated method stub
		dao.updateById(id);
		return id;
	}

	public User login(String name, String pwd) {
		// TODO Auto-generated method stub
		User user = new User();
		user = dao.selectOne(new QueryWrapper<User>().eq("UserName", name));
		
		if(user!=null&&user.getUserPassword().equals(pwd))
			return user;
		return null;	
	}

	public User select(String name) {
		// TODO Auto-generated method stub
		User user1 = new User();
		user1 = dao.selectOne(new QueryWrapper<User>().eq("UserName", name));
		return user1;
	}
}
