package com.info.service;

import java.util.List;

import com.info.entity.MyInfo;

public interface MyInfoService {
	MyInfo getMyInfoById(int id);
	List<MyInfo> getMyInfo();
	void update(MyInfo myInfo);
	void insert(MyInfo myInfo);
}
