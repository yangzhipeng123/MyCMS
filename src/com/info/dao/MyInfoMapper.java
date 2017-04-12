package com.info.dao;

import java.util.List;

import com.info.entity.MyInfo;


public interface MyInfoMapper {
	MyInfo getMyInfoById(int id);
	List<MyInfo> getMyInfo();
	void update(MyInfo myInfo);
	void insert(MyInfo myInfo);
}
