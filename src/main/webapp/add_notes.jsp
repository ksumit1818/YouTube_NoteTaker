<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="container m-10">Please fill your note detail</h1>
		<br>

		<!-- This is add form  -->
		<form action="SaveNoteServlet" method="post">
			<div class="container form-group p-10 m-10">
				<label for="title">Note Title</label> <input name="title" required type="text"
					class="form-control" id="id" aria-describedby="emailHelp"
					placeholder="Enter here"/>
			</div>
			<div class="container form-group p-10 m-10">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content" placeholder="Enter your Content here"
					class="form-control" style="height: 250px"></textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-primary">Add</button>
			</div>

		</form>
	</div>

</body>
</html>