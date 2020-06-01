package com.job.bean;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("admin")
public class Admin {
	@TableId(value="AdminId")
   int AdminId;//管理员Id
	@TableField(value="AdminName")
   String AdminName;//管理员账号
	@TableField(value="AdminPassword")
   String AdminPassword;//管理员密码
	@TableField(value="AdminImg")
   String AdminImg;//管理员头像
public int getAdminId() {
	return AdminId;
}
public String getAdminName() {
	return AdminName;
}
public String getAdminPassword() {
	return AdminPassword;
}
public String getAdminImg() {
	return AdminImg;
}
public void setAdminId(int adminId) {
	AdminId = adminId;
}
public void setAdminName(String adminName) {
	AdminName = adminName;
}
public void setAdminPassword(String adminPassword) {
	AdminPassword = adminPassword;
}
public void setAdminImg(String adminImg) {
	AdminImg = adminImg;
}
public Admin(int adminId, String adminName, String adminPassword, String adminImg) {
	super();
	AdminId = adminId;
	AdminName = adminName;
	AdminPassword = adminPassword;
	AdminImg = adminImg;
}
public Admin() {
	// TODO Auto-generated constructor stub
}
}
