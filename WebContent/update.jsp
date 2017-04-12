<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<style type="text/css">
	#cen{text-align:center;
	     margin:100px;}
</style>
<script type="text/javascript">
	function fun1(){
		window.location.href="getMyInfo.do";
	}
</script>
<body>
<div id="cen">
<h2>汽车信息编辑</h2>
<form action="updateOrInsert.do" id="myForm" method="post">
<c:if test="${myInfo.id>0 }">
<input type="hidden" name="id" value="${myInfo.id }"/>
</c:if>
<c:if test="${myInfo.id==0}">
<input type="hidden" name="id" value="0"/>
</c:if>
发布日期:<input type="text" name="date" value="${myInfo.date}"/><br/><br/>
信息标题:<input type="text" name="title" value="${myInfo.title }" /><br/><br/>
<%-- 信息内容:<input type="text" name="content" value="${myInfo.content }"/><br/><br/> --%>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
信息内容:<textarea rows="3" name="content" cols="">${myInfo.content }</textarea><br/><br/>
图片路径:<input type="text" name="image" value="${myInfo.image }"/><br/><br/>

<input type="submit" value="更新"/>&nbsp;&nbsp;&nbsp;
<input type="button" value="返回" onclick="javascript:fun1()"/>
</form>
</div>
</body>
</html>