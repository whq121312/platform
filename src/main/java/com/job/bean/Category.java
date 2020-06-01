package com.job.bean;

import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;

@TableName("category")
public class Category {
	@TableId(value="CategoryId")
  int CategoryId;//分类Id
	@TableField(value="CategoryName")
  String CategoryName;//分类名称
public int getCategoryId() {
	return CategoryId;
}
public String getCategoryName() {
	return CategoryName;
}

public void setCategoryId(int categoryId) {
	CategoryId = categoryId;
}
public void setCategoryName(String categoryName) {
	CategoryName = categoryName;
}

public Category(int categoryId, String categoryName) {
	super();
	CategoryId = categoryId;
	CategoryName = categoryName;
}
}
