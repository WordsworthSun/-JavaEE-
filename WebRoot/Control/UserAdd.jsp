<%@page import="java.util.*" errorPage="_Error.jsp"%>
<%@page import="DAL.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();//获取项目名称
%>
<!doctype html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<%=path %>/Style/AddStyle.css"/>
<script type="text/javascript" src="<%=path %>/Script/jquery-1.10.1.js"></script>
</head>
<body>
<p id="title">添加用户</p>
		<hr size="1">
	<form action="<%=path %>/UserServlet?type=3" method="post" class="Form">
		<table style=" margin:50px auto;"> 
	            <tbody>
				<tr><td>用户编号：</td><td><input type="text" name="user_id" required  /></td></tr>
				<tr><td>角色名称：</td><td>
				<select name="role_id">				
				<option value="a001">管理员</option>				
				<option value="c001">用户</option>
				
				</select>								
<%-- 					<% --%>
<!-- // 						Role role=new Role();//实例化Role对象 -->
<!-- // 						List<Object> list=role.getEntity();//获取数据 -->
<!-- // 						Object[] obj; -->
<!-- // 						for(int i=0;i<list.size();i++) -->
<!-- // 						{ -->
<!-- // 							obj=(Object[])list.get(i); -->
<!-- // 							out.write("<option value='"+obj[0]+"'>"+obj[1]+"</option>"); -->
<!-- // 						} -->
<%-- 					 %> --%>
				
			</td></tr>
			<tr><td>用户昵称：</td><td><input type="text" name="user_name" required  /></td></tr>
			<tr><td>真实姓名：</td><td><input type="text" name="real_name"  required /></td></tr>
			<tr><td>用户密码：</td><td><input type="text" name="user_pwd" required pattern="^\w{6,)$"  title="密码长度不能少于6位"  /></td></tr>
			<tr><td>联系电话：</td><td><input type="text" name="user_phone" pattern="^1[1-9]\d{9}$" title="手机号码有误"  /></td></tr>
			<tr><td>电子邮箱：</td><td><input type="text" name="user_email" required  /></td></tr>
			<tr><td>用户性别：</td><td><select name="user_gender">				
									<option value="男">男</option>
									<option value="女">女</option>
									</select>
			</td></tr>
			
			<tr><td>出生日期：</td><td><input id="birth" type="date" name="user_birth"/></td></tr>
			<tr><td>车牌号码：</td><td><input type="text" name="car_num" required  /></td></tr>
	        <tr><td>用户住址：</td><td><input type="text" name="user_addr" required  /></td></tr>
	           
	            </tbody>   
	            
	            <tfoot>
	                <tr><td><input type="submit" value="确定" id="btnSure"/></td><td><input type="reset" value="取消" id="btnCancel"/></td></tr>
	            </tfoot> 
	        </table>
       </form>
</body>
</html>
