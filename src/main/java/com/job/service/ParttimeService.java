package com.job.service;

import java.util.List;
import com.job.bean.Parttime;

public interface ParttimeService {
	public Parttime add(Parttime parttime);
	//public List<Parttime> select(String name);
	public List<Parttime> getALLwork();
	public Parttime update(Parttime pt);
	public void  delete(Integer id);
	public Parttime select(String PtType);
	public Parttime selectone(Integer id);
	 
}
