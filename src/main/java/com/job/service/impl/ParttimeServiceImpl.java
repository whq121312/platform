package com.job.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.job.bean.Parttime;
import com.job.dao.ParttimeDao;
import com.job.service.ParttimeService;
@Service("parttimeservice")
public class ParttimeServiceImpl implements ParttimeService {
    @Autowired
     ParttimeDao dao;
	public Parttime add(Parttime parttime) {
		// TODO Auto-generated method stub
		dao.insert(parttime);
		return parttime;
	}
	public List<Parttime> getALLwork() {
		// TODO Auto-generated method stub
	return	dao.selectList(null);
	}
	public Parttime update(Parttime pt) {
		// TODO Auto-generated method stub
		dao.updateById(pt);
		return pt;
	}
	public void delete(Integer id) {
		// TODO Auto-generated method stub
		dao.deleteById(id);
	}
	public Parttime select(String PtType) {
		// TODO Auto-generated method stub
		Parttime pt=new Parttime();
		pt=dao.selectOne(new QueryWrapper<Parttime>().eq("PtType", PtType));
		return pt;
	}
	public Parttime selectone(Integer id) {
		// TODO Auto-generated method stub
		Parttime pt=dao.selectById(id);
		return pt;
	}

}
