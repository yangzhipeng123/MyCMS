package com.info.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.info.dao.MyInfoMapper;
import com.info.entity.MyInfo;
import com.info.service.MyInfoService;
@Service("myInfoService")
public class MyInfoServiceImpl implements MyInfoService {
	@Autowired
	@Qualifier("myInfoMapper")
	private MyInfoMapper myInfoMapper;
	//根据主键查询信息内容
	@Override
	public MyInfo getMyInfoById(int id) {
		// TODO Auto-generated method stub
		return myInfoMapper.getMyInfoById(id);
	}
	//查询所有信息内容
	@Override
	public List<MyInfo> getMyInfo() {
		// TODO Auto-generated method stub
		return myInfoMapper.getMyInfo();
	}
	//编辑信息内容
	@Override
	public void update(MyInfo myInfo) {
		// TODO Auto-generated method stub
		myInfoMapper.update(myInfo);
	}
	//增加信息内容
	@Override
	public void insert(MyInfo myInfo) {
		// TODO Auto-generated method stub
		myInfoMapper.insert(myInfo);
	}

}
