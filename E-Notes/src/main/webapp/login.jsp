<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Login Page</title>

<%@include file="all_component/allcss.jsp"%>

<style>
#grad {
	background-image: linear-gradient(to right, #ad52ac, #6d85ea, #00b0ff, #00d1f3, #12ebcd);
	height: 555px;
}
</style>

</head>
<body>
	<%@include file="all_component/navbar.jsp"%>

	<div class="container-fluid" id="grad">

		<div class="row">

			<div class="col-md-4 offset-md-4">

				<div class="card mt-4">

					<div class="card-header text-center text-white bg-custom">

						<i class="fas fa-user fa-3x"></i>
						<h4>LOGIN</h4>

					</div>

					<%
					String invalidMsg = (String) session.getAttribute("login-failed");

					if (invalidMsg != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=invalidMsg%>
					</div>


					<%
					session.removeAttribute("login-failed");

					}
					%>

					<%
					String withoutLogin = (String) session.getAttribute("login-error");

					if (withoutLogin != null) {
					%>

					<div class="alert alert-danger" role="alert"><%=withoutLogin%></div>

					<%
					}

					session.removeAttribute("login-error");
					%>

					<%
					String lgMsg = (String) session.getAttribute("logoutMsg");

					if (lgMsg != null) {
					%>

					<div class="alert alert-success" role="alert"><%=lgMsg%></div>

					<%
					session.removeAttribute("logoutMsg");

					}
					%>

					<div class="card-body">

						<form action="loginServlet" method="post">

							<div class="form-group">

								<label for="exampleInputEmail1">Email Address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Email"
									name="uemail">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Enter Password" name="upassword">

							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Login</button>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@include file="all_component/footer.jsp"%>
</body>
</html>