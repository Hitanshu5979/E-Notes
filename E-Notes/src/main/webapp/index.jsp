<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
.back-img {
	background: url("img/note-taking-1400x1050.png");
	width: 100%;
	height: 1120px;
	background-position: center; 
	background-repeat: no-repeat;
	background-size: cover;
}
</style>

<meta charset="ISO-8859-1">
<title>Home Page</title>
<%@include file="all_component/allcss.jsp"%>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid back-img">

		<div class="text-center">

			<h1 class="text-white">
				<i class="far fa-file-alt"></i> E-Notes Save Your Notes Online
			</h1>

			<a href="login.jsp" class="btn btn-light"><i class="fas fa-user"></i>
				Login </a> <a href="register.jsp" class="btn btn-light"><i
				class="fas fa-user-plus"></i> Register </a>

		</div>

	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>