<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    isELIgnored="false"  %>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<c:set var="contextPath"  value="${pageContext.request.contextPath}"  />

<%
  request.setCharacterEncoding("UTF-8");
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>대회 안내</title>
</head>
<body>
	<div class = "poster"><a href = "<%-- ${contextPath}/compet/competInfo.do?compet_id=${competInfo.poster} --%>#"><img src = "/src/webapp/resources/images/imgs/1.jpg"/></a></div>
	
	<ul class="nav nav-tabs mb-3">
		<li class="nav-item"><a class="nav-link active" data-toggle="tab" href="#home1">Home</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#profile1">Profile</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#contact1">Contact</a></li>
		<li class="nav-item"><a class="nav-link" data-toggle="tab" href="#message1">Message</a></li>
	</ul>
	
</body>
</html>