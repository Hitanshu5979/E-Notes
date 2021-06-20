<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">

<title>Registration Page</title>

<%@include file="all_component/allcss.jsp"%>

<style>
#grad {
	background-image: linear-gradient(to right, #ad52ac, #6d85ea, #00b0ff, #00d1f3, #12ebcd);
	height: 600px;
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

						<i class="fas fa-user-plus fa-3x"></i>
						<h4>REGISTRATION</h4>

					</div>

					<%
					String regMsg = (String) session.getAttribute("reg-success");

					if (regMsg != null) {
					%>

					<div class="alert alert-success" role="alert">
						<%=regMsg%> Login <a href="login.jsp">Click Here!</a>
					</div>

					<%
					
					session.removeAttribute("reg-success");
					
					}
					%>

					<%
					String FailedMsg = (String) session.getAttribute("failed-msg");

					if (FailedMsg != null) {
					%>

					<div class="alert alert-danger" role="alert">
						<%=FailedMsg%>
					</div>

					<%
					
					session.removeAttribute("failed-msg");
					
					}
					%>

					<div class="card-body">

						<form action="UserServlet" method="post">

							<div class="form-group">

								<label>Full Name</label> <input type="text" class="form-control"
									placeholder="Enter Name" name="fname">

							</div>

							<div class="form-group">

								<label for="exampleInputEmail1">Email Address</label> <input
									type="email" class="form-control" id="exampleInputEmail1"
									aria-describedby="emailHelp" placeholder="Enter Email"
									name="uemail">

							</div>

							<div class="form-group">
								<label for="exampleInputPassword1">Password</label> <input
									type="password" class="form-control" id="exampleInputPassword1"
									placeholder="Set Password" name="upassword">

							</div>

							<button type="submit"
								class="btn btn-primary badge-pill btn-block">Register</button>

						</form>

					</div>

				</div>

			</div>

		</div>

	</div>

	<%@include file="all_component/footer.jsp"%>

</body>
</html>