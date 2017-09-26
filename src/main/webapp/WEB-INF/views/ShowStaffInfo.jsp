<%@ page language="java" contentType="text/html; charset=UTF-8"  import="com.jade.pojo.StaffDetails" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<!--
    <base href="<%=basePath%>" >
    -->
    <title>My JSP 'ShowStaffInfo.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	 <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resource/css/style.css"/>
	 <script type="text/javascript"  src="${pageContext.request.contextPath}/resource/scripts/keywordBall.js"></script>
	 <script type="text/javascript"  src="${pageContext.request.contextPath}/resource/scripts/jquery-1.11.3.js"></script>
  </head>
  
  <body>
  	<p class="title1">员工技能云图</p>
 	<div id="div1">
		<c:forEach var="skillInfo"  items="${staffdetails.getStaffSkillList()}" >
			<a>${skillInfo.getSkill_name()}</a>
		</c:forEach>
	</div>
  <table border="1">
  	<tr>
  		<td>员工ID</td>
  		<td>${staffdetails.getStaffInfo().getStaffId()}</td>
  	</tr>
  	<tr>
  		<td>员工姓名</td>
  		<td>${staffdetails.getStaffInfo().getStaffName()}</td>
  	</tr>
  	<tr>
  		<td>员工性别</td>
  		<td>${staffdetails.getGenderValue()}</td>
  	</tr>
  	<tr>
  		<td>入职日期</td>
  		<td>${staffdetails.getStaffInfo().getHiredate()}</td>
  	</tr>
  	<tr>
  		<td>员工类型</td>
  		<td>${staffdetails.getSTValue()}</td>
  	</tr>  
  	<tr>
  		<td>BAND级别</td>
  		<td>${staffdetails.getStaffInfo().getBand()}</td>
  	</tr>
  	<tr>
  		<td>归属省份</td>
  		<td>${staffdetails.getProv()}</td>
  	</tr>
  	<tr>
  		<td>员工部门</td>
  		<td>${staffdetails.getDept()}</td>
  	</tr>
  	<tr>
  		<td>员工职能</td>
  		<td>${staffdetails.getFun()}</td>
  	</tr>
   </table>
   <a href="skill/DeptSkillReq?Prov_id=${staffdetails.getStaffInfo().getProvince()}&Dept_id=${staffdetails.getStaffInfo().getDepartment()}&Fun_id=${staffdetails.getStaffInfo().getFunction()}">查看员工所处职位要求技能</a>
 	<form action="skill/MatchResults"  method="post">
 		<%StaffDetails  staffDets=(StaffDetails)request.getAttribute("staffdetails");
 		System.out.println("staffDets msg"+ staffDets.getStaffInfo().getStaffName());
 		session.setAttribute("staff_details", staffDets); %>
 		<input type="submit" value="查看员工技能与职位匹配度">
 	</form>
   <table border="1">
   	<tr>
   		<td>技能ID</td>
   		<td>技能得分</td>
   		<td>技能名称</td>
   	</tr>
 	<c:forEach var="skillInfo"  items="${staffdetails.getStaffSkillList()}" >
 		<tr>
 			<td>
 				${skillInfo.getSkillId()}
 			</td>
 			<td>
 				${skillInfo.getSkillLevel()}
 			</td>
 			<td>
 				${skillInfo.getSkill_name()}
 			</td>
 		</tr>
 	</c:forEach>
  	</table>
  	
  </body>
</html>
