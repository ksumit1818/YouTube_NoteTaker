<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.helper.*,org.hibernate.*,com.entities.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : Update note</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<h1>Edit Your note</h1>
		<br>
		<%
		int noteId = Integer.parseInt(request.getParameter("note_id").trim());
		Session s = FactoryProvider.getFactory().openSession();
		//permanent changes in database wont occur if we dont use this
		Note note = s.get(Note.class, noteId);
		%>
		<form action="UpdateNoteServlet" method="post">
		<input value="<%= note.getId()%>" name="noteId" type="hidden"/>
			<div class="container form-group p-10 m-10">
				<label for="title">Note Title</label> <input name="title" required
					type="text" class="form-control" id="id"
					aria-describedby="emailHelp" placeholder="Enter here" value="<%= note.getTitle() %>"/>
			</div>
			<div class="container form-group p-10 m-10">
				<label for="content">Note Content</label>
				<textarea name="content" required id="content"
					placeholder="Enter your Content here" class="form-control"
					style="height: 250px"><%= note.getContent() %>
					</textarea>
			</div>
			<div class="container text-center">
				<button type="submit" class="btn btn-success">Save Changes</button>
			</div>

		</form>
	</div>
</body>
</html>