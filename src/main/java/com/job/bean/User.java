package com.job.bean;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("user")
public class User {
	@TableId(value="UserId")
    int UserId;   //用户ID
	@TableField(value="UserName")
    String UserName;//用户名
	@TableField(value="UserMobile")
   String UserMobile;//用户手机号
	@TableField(value="UserPassword")
   String UserPassword;//用户密码
	@TableField(value="usercategory")
   String  UserCategory;//用户类别
	@TableField(value="UserSex")
   String UserSex;//用户性别
	@TableField(value="UserRealname")
   String Realname;//用户真名
	@TableField(value="UserImg")
   String UserImg;//用户头像

public int getUserId() {
		return UserId;
	}
	public void setUserId(int userId) {
		UserId = userId;
	}
public String getUserMobile() {
	return UserMobile;
}
public void setUserMobile(String userMobile) {
	UserMobile = userMobile;
}
public String getUserPassword() {
	return UserPassword;
}
public void setUserPassword(String userPassword) {
	UserPassword = userPassword;
}
public String getUserSex() {
	return UserSex;
}
public void setUserSex(String userSex) {
	UserSex = userSex;
}
public String getRealname() {
	return Realname;
}
public void setRealname(String realname) {
	Realname = realname;
}
public String getUserImg() {
	return UserImg;
}
public void setUserImg(String userImg) {
	UserImg = userImg;
}

public String getUserName() {
	return UserName;
}
public void setUserName(String userName) {
	UserName = userName;
}
public String getUserCategory() {
	return UserCategory;
}
public void setUserCategory(String userCategory) {
	UserCategory = userCategory;
}

public User(int userId, String userName, String userMobile, String userPassword, String userCategory, String userSex,
		String realname, String userImg) {
	super();
	UserId = userId;
	UserName = userName;
	UserMobile = userMobile;
	UserPassword = userPassword;
	UserCategory = userCategory;
	UserSex = userSex;
	Realname = realname;
	UserImg = userImg;
}
public User() {
	// TODO Auto-generated constructor stub
 }    
}
