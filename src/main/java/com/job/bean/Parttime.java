package com.job.bean;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("parttime")
public class Parttime {
 @TableId(value="PtId")
  int PtId;//兼职Id
 @TableField(value="PtTitle")
  String PtTitle;//兼职标题
 @TableField(value="CategoryId")
  int PtCategoryId;//兼职分类Id
 @TableField(value="PtType")
  String  PtType;//兼职发布类型
 @TableField(value="PtIssueId")
  int PtIssueId;//发布者Id
 @TableField(value="PtPeopleCount")
  int PtPeopleCount;//兼职所需人数
 @TableField(value="PtPayoff")
  String PtPayoff;//工作报酬
 @TableField(value="PtDescribe")
  String PtDescribe;//工作内容
 @TableField(value="PtAddress")
  String PtAddress;//工作地点
 @TableField(value="PtWorktime")
  String PtWorktime;//工作时间
 @TableField(value="PtImgs")
  String PtImgs;//招聘图片
 @TableField(value="PtSex")
  String PtSex;//性别要求
 @TableField(value="PtCall")
  String PtCall;//联系人电话
 @TableField(value="PtCallName")
  String PtCallName;//联系人
 @TableField(value="PtIsValidate")
  int PtIsValidate;//兼职是否审核
public int getPtId() {
	return PtId;
}
public String getPtTitle() {
	return PtTitle;
}
public int getPtCategoryId() {
	return PtCategoryId;
}
public String getPtType() {
	return PtType;
}
public int getPtIssueId() {
	return PtIssueId;
}
public int getPtPeopleCount() {
	return PtPeopleCount;
}
public String getPtPayoff() {
	return PtPayoff;
}
public String getPtDescribe() {
	return PtDescribe;
}
public String getPtAddress() {
	return PtAddress;
}
public String getPtWorktime() {
	return PtWorktime;
}
public String getPtImgs() {
	return PtImgs;
}
public String getPtSex() {
	return PtSex;
}
public String getPtCall() {
	return PtCall;
}
public String getPtCallName() {
	return PtCallName;
}
public void setPtId(int ptId) {
	PtId = ptId;
}
public void setPtTitle(String ptTitle) {
	PtTitle = ptTitle;
}
public void setPtCategoryId(int ptCategoryId) {
	PtCategoryId = ptCategoryId;
}
public void setPtType(String ptType) {
	PtType = ptType;
}
public void setPtIssueId(int ptIssueId) {
	PtIssueId = ptIssueId;
}
public void setPtPeopleCount(int ptPeopleCount) {
	PtPeopleCount = ptPeopleCount;
}
public void setPtPayoff(String ptPayoff) {
	PtPayoff = ptPayoff;
}
public void setPtDescribe(String ptDescribe) {
	PtDescribe = ptDescribe;
}
public void setPtAddress(String ptAddress) {
	PtAddress = ptAddress;
}
public void setPtWorktime(String ptWorktime) {
	PtWorktime = ptWorktime;
}
public void setPtImgs(String ptImgs) {
	PtImgs = ptImgs;
}
public void setPtSex(String ptSex) {
	PtSex = ptSex;
}
public void setPtCall(String ptCall) {
	PtCall = ptCall;
}
public void setPtCallName(String ptCallName) {
	PtCallName = ptCallName;
}

public int getPtIsValidate() {
	return PtIsValidate;
}
public void setPtIsValidate(int ptIsValidate) {
	PtIsValidate = ptIsValidate;
}
public Parttime(int ptId, String ptTitle, int ptCategoryId, String ptType, int ptIssueId, int ptPeopleCount,
	    String ptPayoff, String ptDescribe, String ptAddress, String ptWorktime, String ptImgs,
		String ptSex, String ptCall, String ptCallName, int ptIsValidate) {
	super();
	PtId = ptId;
	PtTitle = ptTitle;
	PtCategoryId = ptCategoryId;
	PtType = ptType;
	PtIssueId = ptIssueId;
	PtPeopleCount = ptPeopleCount;
	PtPayoff = ptPayoff;
	PtDescribe = ptDescribe;
	PtAddress = ptAddress;
	PtWorktime = ptWorktime;
	PtImgs = ptImgs;
	PtSex = ptSex;
	PtCall = ptCall;
	PtCallName = ptCallName;
	PtIsValidate = ptIsValidate;
  }
public Parttime() {
	// TODO Auto-generated constructor stub
} 
}
