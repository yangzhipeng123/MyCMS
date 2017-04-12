package com.info.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.info.entity.MyInfo;
import com.info.service.MyInfoService;

@Controller("myInfoController")
public class MyInfoController {
	@Autowired
	@Qualifier("myInfoService")
	private MyInfoService myInfoService;
	@RequestMapping(value="/getMyInfoById.do")
	public String getMyInfoById(Map<String,Object> map,int id){
		MyInfo myInfo=myInfoService.getMyInfoById(id);
		map.put("myInfo", myInfo);
		return "update";
	}
	@RequestMapping(value="/getMyInfo.do")
	public String getMyInfo(Map<String,Object> map){
		List<MyInfo> myInfoList=myInfoService.getMyInfo();
		map.put("MyInfoList", myInfoList);
		return "info";
	}
	@RequestMapping(value="/updateOrInsert.do")
	public String update(MyInfo myInfo){
		if(myInfo.getId()!=0){
			myInfoService.update(myInfo);
		}else{
			myInfoService.insert(myInfo);
		}
		return "forward:getMyInfo.do";
	}
}
