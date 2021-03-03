<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix = "c" uri ="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		body {
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
		.log{
		overflow: scroll;
		margin: auto;
		display: block;
		height: 100px;
		width: 50%;
		border: 1px solid Chartreuse;
		background-color: grey;
		
		}
		.box {
		text-align: center;
		display:inline-block;
		vertical-align: top;
		margin: 15px;
		height: 200px;
		width: 200px;
		border: 1px solid Chartreuse;
		}
		.options {
		margin-left: 5%;
		width: 100%;
		display: block;
		}
		input[type=submit] {
		margin-top: 10px;
		border-color: chartreuse;
		color: chartreuse;
		background-color: black;
		}
		.lowerbox {
		text-align: center;
		}
		</style>
	</head>
	<body>
		<div class="container">
			<div class="options">
				<h4>Your gold: <c:out value="${yourGold }"></c:out></h4>
				<div class="activities">
					<div class="box" >
						<h4>Farm</h4>
						<h4>(earns 10-20 gold)</h4>
						<form action="/farm" method="post">
							<input type="text" value="exampletext" name="farm" hidden=true>
							<input type="submit" value="Find gold!">
						</form>
					</div>
					<div class="box" >
						<h4>Cave</h4>
						<h4>(earns 5-10 gold)</h4>
						<form action="/cave" method="post">
							<input type="text" value="exampletext" name="cave" hidden=true>
							<input type="submit" value="Find gold!">
						</form>
					</div>	
					<div class="box" >
						<h4>House</h4>
						<h4>(earns 2-5 gold)</h4>
						<form action="/house" method="post">
							<input type="text" value="exampletext" name="house" hidden=true>
							<input type="submit" value="Find gold!">
						</form>
					</div>
					<div class="box" >
						<h4>Casino</h4>
						<h4>(win/lose 0-50 gold)</h4>
						<form action="/casino" method="post">
							<input type="text" value="exampletext" name="casino" hidden=true>
							<input type="submit" value="Find gold!">
						</form>
					</div>
				</div>
			</div>
			<div class="lowerbox" >
				<h4>-- Activity log --</h4>
				<div class="log">
					<c:forEach var="activity" items="${log}">
		      		<p>${activity}</p>
		   			</c:forEach>
				</div>
				<form action="/reset">
					<input type="submit" value="Reset">
				</form>
			</div>

		</div>
	</body>
</html>