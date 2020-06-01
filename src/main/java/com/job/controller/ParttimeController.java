package com.job.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.swing.JOptionPane;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.job.bean.Parttime;
import com.job.bean.User;
import com.job.service.ParttimeService;
import com.job.service.UserService;
@Controller
public class ParttimeController {
  @Autowired
  ParttimeService dao;
  @Autowired
  UserService userservice;
  @RequestMapping(value="/goPublishWork")
  public ModelAndView AddoneParttime(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String name=request.getParameter("name");
	    ModelAndView mav=new ModelAndView();
	    mav.addObject("id",name);
		mav.setViewName("WEB-INF/jsp/qiantai/publicwork.jsp");
		return mav;
  }
  @RequestMapping(value="/fabu")
  public ModelAndView AddParttime(HttpServletRequest request, HttpServletResponse response) throws Exception {
	  String PtTitle=request.getParameter("title");
	  String PtType=request.getParameter("type");
	  int  PtPeopleCount=Integer.parseInt(request.getParameter("count"));
	  String PtPayoff=request.getParameter("payoff");
	  String PtDescribe=request.getParameter("describe");
	  String PtAddress=request.getParameter("address");
	  String PtWorktime=request.getParameter("time");
	  String PtImgs=request.getParameter("img");
	  String PtSex=request.getParameter("sex");
	  String PtCall=request.getParameter("call");
	  String PtCallName=request.getParameter("callname");
	  String name=request.getParameter("name");
	  User u=userservice.select(name);
	  int id=u.getUserId();
	  int PtCategoryId=0;
	  if(PtType=="传单派送") {
		  PtCategoryId=1;
	  }
	  if(PtType=="设计") {
		  PtCategoryId=2;
	  }
	  if(PtType=="家教") {
		  PtCategoryId=3; 
	  }
	  if(PtType=="会计") {
		  PtCategoryId=4; 
	  }
	  if(PtType=="服务员") {
		  PtCategoryId=5; 
	  }
	  if(PtType=="促销") {
		  PtCategoryId=6; 
	  }
	  if(PtType=="其他"){
		  PtCategoryId=7;
	  }
	  Parttime pt=new Parttime();
	  pt.setPtAddress(PtAddress);
	  pt.setPtCall(PtCall);
	  pt.setPtCallName(PtCallName);
	  pt.setPtCategoryId(PtCategoryId);
	  pt.setPtDescribe(PtDescribe);
	  pt.setPtImgs(PtImgs);
	  pt.setPtIssueId(id);
	  pt.setPtIsValidate(0);
	  pt.setPtPayoff(PtPayoff);
	  pt.setPtPeopleCount(PtPeopleCount);
	  pt.setPtSex(PtSex);
	  pt.setPtTitle(PtTitle);
	  pt.setPtType(PtType);
	  pt.setPtWorktime(PtWorktime);
	  dao.add(pt);
	  ModelAndView mav=new ModelAndView();
	  JOptionPane.showMessageDialog(null, "发布成功，等待审核中...");
	  mav.setViewName("WEB-INF/jsp/qiantai/main.jsp");
		return mav;
  }
  @RequestMapping(value="/findwork")
  public ModelAndView FindWork(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    String workcategory=request.getParameter("workcategory");
	    Parttime pat=dao.select(workcategory);
	    ModelAndView mav=new ModelAndView();
	    mav.addObject("msg",pat);
	    mav.setViewName("WEB-INF/jsp/qiantai/work.jsp");
		return mav;
  }
  @RequestMapping(value="/goWorkList")
  public ModelAndView WorkList(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    List<Parttime> pt=dao.getALLwork();
	    ModelAndView mav=new ModelAndView();
	    mav.addObject("msg",pt);
	    mav.setViewName("WEB-INF/jsp/houtai/workManage/workList.jsp");
		return mav;
  }
  @RequestMapping(value="/goUnauditedWorkList")
  public ModelAndView Work(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    List<Parttime> pt=dao.getALLwork();
	    ModelAndView mav=new ModelAndView();
	    mav.addObject("msg",pt);
	    mav.setViewName("WEB-INF/jsp/houtai/workManage/updateWork.jsp");
		return mav;
  }
  @RequestMapping(value="/work")
  public ModelAndView Work2(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    int  id=Integer.parseInt(request.getParameter("id"));
	    Parttime pt=dao.selectone(id);
	    pt.setPtIsValidate(1);
	    dao.update(pt);
	    ModelAndView mav=new ModelAndView();
	    mav.setViewName("WEB-INF/jsp/houtai/workManage/workList.jsp");
		return mav;
  }
  @RequestMapping(value="/deletework")
  public ModelAndView DeleteWork(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    int  id=Integer.parseInt(request.getParameter("id"));
	    dao.delete(id);
	    ModelAndView mav=new ModelAndView();
	    mav.setViewName("WEB-INF/jsp/houtai/workManage/updateWork.jsp");
		return mav;
  }
  @RequestMapping(value="getWorkList.action")
  public ModelAndView WorkAllList(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    List<Parttime> pt1=new ArrayList<Parttime>();
	    List<Parttime> pt=dao.getALLwork();
	    for(int i=0;i<pt.size();i++) {
	    Parttime p=	dao.selectone(i+1);
	    	if(p.getPtIsValidate()==1) {
	    		pt1.add(p);
	    	}
	    }
	    ModelAndView mav=new ModelAndView();
	    mav.addObject("work",pt1);
	    mav.setViewName("WEB-INF/jsp/qiantai/main.jsp");
		return mav;
}
  @RequestMapping(value="/deletework2")
  public ModelAndView DeleteWork2(HttpServletRequest request, HttpServletResponse response) throws Exception {
	    int  id=Integer.parseInt(request.getParameter("id"));
	    dao.delete(id);
	    ModelAndView mav=new ModelAndView();
	    mav.setViewName("WEB-INF/jsp/houtai/workManage/workList.jsp");
		return mav;
  }
}
