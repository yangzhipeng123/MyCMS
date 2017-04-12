<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>二手车资源</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
  <link rel="stylesheet" type="text/css" href="css/myCss.css">
  <script type="text/javascript" src="js/jquery-1.8.3.js"></script>
  <script type="text/javascript" src="js/myJs.js"></script>
  </head>
  <body>
  <input type="hidden" value="${re }" id="ti">
  <p id="t2">&nbsp;&nbsp;欢迎您的光临&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img alt="" class="title" src="image/title2.jpg"></p>
   <div id="left">
   		<p id="con">
   			&nbsp;&nbsp;&nbsp;汽<br/><br/>
   			&nbsp;&nbsp;&nbsp;车<br/><br/>
   			&nbsp;&nbsp;&nbsp;信<br/><br/>
   			&nbsp;&nbsp;&nbsp;息<br/><br/>
   			&nbsp;&nbsp;&nbsp;共<br/><br/>
   			&nbsp;&nbsp;&nbsp;享<br/><br/>
   			&nbsp;&nbsp;&nbsp;化<br/><br/>
   		</p>
   </div>
   <div id="center">
   		<%-- <% for(Message m:list){	%> --%>
   		<c:forEach items="${MyInfoList}" var="myInfo">
   		<div name="mydiv">
		<table class="table">
			<tr>
				<td><a href="getMyInfoById.do?id=${myInfo.id }" ><img src="image/${myInfo.image }"/></a></td>
			</tr>
			<tr>
				<td><a href="getMyInfoById.do?id=${myInfo.id }">信息标题：${myInfo.title }</a></td>
			</tr>
			<tr>
				<td><a href="getMyInfoById.do?id=${myInfo.id }">发布时间：${myInfo.date }</a></td>
			</tr>
		</table>
		<p></p>
		</div>
		</c:forEach>
		<%--  <%
  } %> --%>
  
	<div><a href="#"><img class="pong" alt="" src="image/link.png"></a>
	<a href="#"><img class="pong" alt="" src="image/next.png"></a>
	&nbsp;&nbsp;当前页：第 1 页
	&nbsp;&nbsp;共 1 页&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
	</div>
   <div id="right"><a  href="#"><img alt="" src="image/help1.jpg"></a><div>
   &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="update.jsp">添加信息</a></div></div>

  </body>
</html>
