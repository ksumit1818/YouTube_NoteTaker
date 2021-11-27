<%@page import="java.util.List"%>
<%@page import="org.hibernate.Query"%>
<%@page import="com.helper.FactoryProvider"%>
<%@page import="org.hibernate.Session"%>
<%@page import="com.entities.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Note Taker : All Notes</title>
<%@include file="all_js_css.jsp"%>
</head>
<body>
	<div class="container-fluid p-0 m-0">
		<%@include file="navbar.jsp"%>
		<br>
		<h1 class="text-uppercase">All Notes:</h1>
		<div class="row">
			<div class="col-12"></div>
		</div>
		<%
		Session s = FactoryProvider.getFactory().openSession();
		Query query = s.createQuery("from Note");
		List<Note> list = query.list();
		for (Note note : list) {
		%>

		<div class="card mt-3">
			<img class="card-img-top m-4" style="max-width: 100px"
				src="img/note.png" alt="Card image cap">
			<div class="card-body px-5">
				<h5 class="card-title"><%=note.getTitle()%></h5>
				<p class="card-text"><%=note.getContent()%></p>
				<div class="container text-center">
					<a href="update_note.jsp?note_id=<%=note.getId()%>"
						class="btn btn-primary m-1">Update</a> 
						<a href="DeleteServlet?note_id=<%=note.getId()%>"
						class="btn btn-danger m-1">Delete</a>
				</div>
			</div>
		</div>

		<%
		}
		s.close();
		%>
	</div>
</body>
</html>