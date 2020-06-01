package com.job.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.job.bean.Admin;
import com.job.service.AdminService;

@Controller
public class AdminController {
   @Autowired
   AdminService adminservice;
   @RequestMapping(value="/houtailogin")
	public ModelAndView AddoneAdmin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name=request.getParameter("account");
		String pwd=request.getParameter("password");
		ModelAndView mav=new ModelAndView();
		mav.setViewName("WEB-INF/jsp/houtai/login.jsp");
		Admin user=adminservice.login(name, pwd);
		Admin u=adminservice.select(name);
		if(user!=null) {
		 mav.addObject("msg",u);
		 mav.setViewName("WEB-INF/jsp/houtai/main.jsp");
		return mav;
		}else {
		mav.setViewName("WEB-INF/jsp/houtai/login.jsp");
		return mav;
		}
	}  
   @RequestMapping(value="/xiugaipwd")
	public ModelAndView AdminPwd(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name=request.getParameter("name");
		Admin a=adminservice.select(name);
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", a);
		mav.setViewName("WEB-INF/jsp/houtai/gopwd.jsp");
		return mav;
	} 
   @RequestMapping(value="/Modify")
	public ModelAndView Admin(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String name=request.getParameter("adminname");
		String pwd=request.getParameter("pwd");
		String pwd2=request.getParameter("pwd2");
		ModelAndView mav=new ModelAndView();
		if(pwd.equals(pwd2)) {
			Admin a=adminservice.select(name);
			a.setAdminPassword(pwd);
			a.setAdminName(name);
			adminservice.update(a);
			mav.setViewName("WEB-INF/jsp/houtai/main.jsp");
			return mav;
		}else {
			JOptionPane.showMessageDialog(null, "两次输入的值不一致");
			mav.setViewName("WEB-INF/jsp/houtai/gopwd.jsp");
			return mav;
		}
	} 
   @RequestMapping(value="/login")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ModelAndView mav=new ModelAndView();
		mav.addObject("msg", "欢迎进入大学生校园兼职平台管理系统");
		mav.setViewName("WEB-INF/jsp/houtai/index.jsp");
		return mav;
	}  
}
