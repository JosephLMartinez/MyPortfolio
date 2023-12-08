<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri= "http://java.sun.com/jsp/jstl/core" %>
	<%@ page isErrorPage="true" %>    
	<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="/css/Style.css"/>
	<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<title>Insert title here</title>
</head>
<body>
	<div id="top">
		<h1>Welcome Visitor Please Explore</h1>
		<a href="/login" id="login">Contact Information</a>
	</div>
	<div>
		<h3 id="title">Project Page</h3>
		<div id="Everything_Important">
			<div id="options_on_left">
				<a href="/" class="menu_links">Welcome Page</a>
				<a href="/projects" class="menu_links">Projects</a>
				<a href="/resume" class="menu_links">Resume</a>
				<a href="/coverletter" class="menu_links">Cover Letter</a>
				<a href="/more" class="menu_links">Conquered Mountains</a>
			</div>
			<div id="content">
				<div class="content">
					<a class="icon" id="webpageIcon"></a>
					<p> caption for project image </p>
				</div>
				<div class="content">
					<img>
					<p> caption for project image </p>
				</div>
				<div class="content">
					<img>
					<p> caption for project image </p>
				</div>
				<p> As I'm sure you can currently see. I have no projects. This is misleading. I am building my portfolio as we speak.
				I have at this point, at least 2. Both porjects are in python and this site in written in Java. I will be creating interactive
				videos to put here so that you can watch me walk through those porjects. I have a hope to add java projects on this page as well
				so that you can interact with them yourself. Please be forgiving on the black and white layout of some. My goal is backend development
				so that is where I prioritize my work. I hope that the projects that are colorful demonstrate my capability to do front end sufficiently. </p>
			</div>
		</div>
		
		
	</div>
</body>
</html>