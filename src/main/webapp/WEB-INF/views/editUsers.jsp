<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
		<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Spring5 MVC Hibernate Demo</title>
		<style type="text/css">
			.error {
				color: red;
			}
			table {
				width: 50%;
				border-collapse: collapse;
				border-spacing: 0px;
			}
			table td {
				border: 1px solid #565454;
				padding: 20px;
			}
		</style>
	</head>
	<body>
		<h1>输入表单</h1>
		<form:form action="addUser" method="post" modelAttribute="user">
			<table>
				<tr>
					<td>姓名</td>
					<td>
						<form:input path="name" /> <br />
						<form:errors path="name" cssClass="error" />
					</td>
				</tr>
				<tr>
					<td>邮箱</td>
					<td>
						<form:input path="email" /> <br />
						<form:errors path="email" cssClass="error" />
					</td>
				</tr>
				<tr>
					<td colspan="2"><button type="submit">提交</button></td>
				</tr>
			</table>
		</form:form>
		
		<h2>用户列表</h2>
		<table>
			<tr>
				<td><strong>姓名</strong></td>
				<td><strong>邮件</strong></td>
			</tr>
			<c:forEach items="${users}" var="user">
				<tr>
					<td>${user.name}</td>
					<td>${user.email}</td>
				</tr>
			</c:forEach>
		</table>
	</body>
</html>