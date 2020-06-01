package com.job.service;

import java.util.List;
import com.job.bean.User;

public interface UserService {
	public List<User> getALLUser();
    //查询单个的
	public User  getAdmin(Integer id);
	//增
	public User add(User User);
	//删
	public void delete(Integer id);
	//改
	public User update(User user);
	public User login(String name, String pwd);
	public User select(String name);
}
