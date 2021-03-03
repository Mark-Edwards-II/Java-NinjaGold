<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
			<style>
	body {
	text-align: center;
	color: Chartreuse;
	width: 100%;
	margin: 0 auto;
	padding: 10px;
	background-color: black;
	}
	.container {
	display: inline-block;
	width: 100%;
	}
	input[type=submit] {
	border-color: chartreuse;
	color: chartreuse;
	background-color: black;
	}
	</style>
	</head>
	<body>
		<h1>Your gambling problem has landed you in prison...</h1>
		<form action="/reset">
			<input type="submit" value="Make Bail!">
		</form>
		
	</body>
</html>