package com.job.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.job.bean.User;
import com.job.service.UserService;



@Controller
public class Usercontroller {
	@Autowired
	UserService userservice;
	   @RequestMapping(value="/qiantailogin")
		public ModelAndView AddoneUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
			String name=request.getParameter("username");
			String pwd=request.getParameter("password");
			ModelAndView mav=new ModelAndView();
			mav.setViewName("WEB-INF/jsp/qiantai/login.jsp");
			User user=userservice.login(name, pwd);
			User user1=userservice.select(name);
			if(user!=null) {
			 mav.addObject("msg",user1);
			 mav.setViewName("WEB-INF/jsp/qiantai/main.jsp");
			return mav;
			}else {
			mav.setViewName("WEB-INF/jsp/qiantai/login.jsp");
			return mav;
			}
		}
	   @RequestMapping(value="/register")
		public ModelAndView AddUser(HttpServletRequest request, HttpServletResponse response) throws Exception {
			 ModelAndView mav=new ModelAndView();
			 mav.setViewName("WEB-INF/jsp/qiantai/register.jsp");
			return mav;
		}
		@RequestMapping(value="/zhuce2")
		public ModelAndView Add(HttpServletRequest request, HttpServletResponse response) throws Exception {
			User user=new User();
			String name=request.getParameter("UserName");
			String pwd=request.getParameter("UserPassword");
			String realname=request.getParameter("Realname");
			String sex=request.getParameter("UserSex");
			String category=request.getParameter("user_category");
			String mobile=request.getParameter("UserMobile");
			String image=request.getParameter("UserImg");
			 ModelAndView mav=new ModelAndView();
			user.setUserName(name);
			user.setUserPassword(pwd);
			user.setRealname(realname);
			user.setUserSex(sex);
			user.setUserCategory(category);
			user.setUserMobile(mobile);
			user.setUserImg(image);
			User user2=userservice.add(user);
			if(user2!=null) {
			 mav.setViewName("WEB-INF/jsp/qiantai/login.jsp");
			return mav;
			}else {
			//mav.addObject("msg","注册失败");
			mav.setViewName("WEB-INF/jsp/qiantai/register.jsp");
			return mav;
			}		
		}
		@RequestMapping(value="/qiantaimain")
		public ModelAndView User(HttpServletRequest request, HttpServletResponse response) throws Exception {
			 ModelAndView mav=new ModelAndView();
			 mav.setViewName("WEB-INF/jsp/qiantai/main.jsp");
			return mav;
		}
		@RequestMapping(value="/personalCenter")
		public ModelAndView Use(HttpServletRequest request, HttpServletResponse response) throws Exception {
			 ModelAndView mav=new ModelAndView();
			 String name=request.getParameter("name");
			 User u=userservice.select(name);
			 mav.addObject("msg",u);
			 mav.setViewName("WEB-INF/jsp/qiantai/personalcenter.jsp");
			return mav;
		}
		@RequestMapping(value="/xiugai")
		public ModelAndView User2(HttpServletRequest request, HttpServletResponse response) throws Exception {
			 ModelAndView mav=new ModelAndView();
			 String name=request.getParameter("username");
			 User u=userservice.select(name);
			 mav.addObject("msg",u);
			 mav.setViewName("WEB-INF/jsp/qiantai/personalModify.jsp");
			return mav;
		}
		@RequestMapping(value="/xiugai2")
		public ModelAndView xiugai(HttpServletRequest request, HttpServletResponse response) throws Exception {
			User user=new User();
			int id=Integer.parseInt(request.getParameter("userId"));
			String name=request.getParameter("username");
			String pwd=request.getParameter("userPassword");
			String realname=request.getParameter("realname");
			String sex=request.getParameter("sex");
			String category=request.getParameter("user_category");
			String mobile=request.getParameter("userMoblie");
			String image=request.getParameter("image");
			 ModelAndView mav=new ModelAndView();
			user.setUserId(id);
			user.setUserName(name);
			user.setUserPassword(pwd);
			user.setRealname(realname);
			user.setUserSex(sex);
			user.setUserCategory(category);
			user.setUserMobile(mobile);
			user.setUserImg(image);
			userservice.update(user);
			JOptionPane.showMessageDialog(null, "修改成功");
			mav.setViewName("WEB-INF/jsp/qiantai/main.jsp");
			return mav;
		}
		@RequestMapping(value="/gonggao")
		public ModelAndView Gonggao(HttpServletRequest request, HttpServletResponse response) throws Exception {
			 ModelAndView mav=new ModelAndView();
			 mav.setViewName("WEB-INF/jsp/qiantai/gonggao.jsp");
			return mav;
		}
		@RequestMapping(value="/goUserList")
		public ModelAndView UserList(HttpServletRequest request, HttpServletResponse response) throws Exception {
			List<User> users=userservice.getALLUser();
			 ModelAndView mav=new ModelAndView();
			 mav.addObject("users", users);
			 mav.setViewName("WEB-INF/jsp/houtai/userManage/userList.jsp");
			return mav;
		}
		@RequestMapping(value="/deleteuser")
		public ModelAndView Deleteuser(HttpServletRequest request, HttpServletResponse response) throws Exception {
			int id=Integer.parseInt(request.getParameter("userId"));
			userservice.delete(id);
			 ModelAndView mav=new ModelAndView();
			 mav.setViewName("WEB-INF/jsp/houtai/userManage/userList.jsp");
			return mav;
		}
}
