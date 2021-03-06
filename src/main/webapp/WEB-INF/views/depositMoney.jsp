<%@page import="com.epam.models.Account"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
<%
	  if (session.getAttribute("isUserLoggedIn") == null) {
	    request.getRequestDispatcher("login.jsp").forward(request, response);
	  }
	%>
<jsp:include page="dashboardHeader.jsp" /> 
	<form class="form-vertical" role="form" action="depositMoney"
		method="post">

		<div class="form-group">
			<label for="account Number" class="col-sm-2 control-label">Enter
				Account Number</label>

			<div class="col-sm-10">
				<input type="number" class="form-control" id="account Number"
					placeholder="Enter Account Number" name="accountNumber" required="required">
			</div>
		</div>

		<div class="form-group">
			<label for="amount" class="col-sm-2 control-label">Enter
				Amount</label>

			<div class="col-sm-10">
				<input type="number" class="form-control" id="depositAmount"
					placeholder="Enter Amount" name="depositAmount" required="required">
			</div>
		</div>

		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="submit" class="btn btn-default">Submit</button>
			</div>
		</div>

	</form>

</body>
</html>