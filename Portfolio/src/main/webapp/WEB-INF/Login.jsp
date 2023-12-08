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
		<h3 id="title">Information Exchange</h3>
		<div id="Everything_Important">
			<div id="options_on_left">
				<a href="/" class="menu_links">Welcome Page</a>
				<a href="/projects" class="menu_links">Projects</a>
				<a href="/resume" class="menu_links">Resume</a>
				<a href="/coverletter" class="menu_links">Cover Letter</a>
				<a href="" class="menu_links">Conquered Mountains</a>
			</div>
			<div id="content">
				<!--register div -->
				<div>
			  		<h3>Please Leave your Information for the Full Experience</h3>
		 			<form:form class="quiz" action="/newUser" method="POST" modelAttribute="newUser">
		 				<div>
							<p><form:errors path="firstName" class="errors"></form:errors></p>
		       				<form:label path="firstName">First Name:</form:label>
		       				<form:input class= "bar" type="text" path="firstName"/>
		     			</div>
		     			<div>
							<p><form:errors path="lastName" class="errors"></form:errors></p>
		       				<form:label path="lastName">Last Name:</form:label>
		       				<form:input class= "bar" type="text" path="lastName"/>
		     			</div>
		     			<div>
							<p><form:errors path="company" class="errors"></form:errors></p>
		       				<form:label path="company">Company:</form:label>
		       				<form:input class= "bar" type="text" path="company"/>
		     			</div>
		     			<div>
							<p><form:errors path="email" class="errors"></form:errors></p>
		       				<form:label  path="email" >Email:</form:label>
		       				<form:input class= "bar" type="text" path="email"/>
		     			</div>
		     			<div>
							<p><form:errors path="password" class="errors"></form:errors></p>
		       				<form:label  path="password" >Password:</form:label>
		       				<form:input class= "bar" type="password" path="password"/>
		     			</div>
		     			<div>
							<p><form:errors path="confirm" class="errors"></form:errors></p>
		       				<form:label  path="confirm" >Confirm Password:</form:label>
		       				<form:input class= "bar" type="password" path="confirm"/>
		     			</div>
		     			<input class= "submit" type="submit" value="Add User"/>
		   			</form:form>
			 	</div>
			 
				<!-- login div -->
				<div>
				   <h3>Returning Guest</h3>
				   <form:form  class="quiz" action="/login" method="POST"  modelAttribute="newLogin">
				
				    	<div>
							<p><form:errors path="email" class="errors"></form:errors></p>
				       		<form:label  path="email" >Email:</form:label>
				       		<form:input class= "bar" type="text" path="email"/>
				     	</div>
				     	<div>
							<p><form:errors path="password" class="errors"></form:errors></p>
				       		<form:label  path="password" >Password:</form:label>
				       		<form:input class= "bar" type="password" path="password"/>
				     	</div>
				     	<input class= "submit" type="submit" value="Log In"/>
				   </form:form>
				</div>
				<p>Upon launching this website, I hope that I will have access to the information you provide. Don't worry, passwords are
				properly encrypted. I simply wish to exchange information so that I might be able to reach out about employment. A feature 
				I've yet to include but hope to implement is a system that emails you immediately upon signing in. Features that might become
				available include: resume, cover letter, the ability to download those pdfs conquered mountains, and possibly just regular 
				contact information if you use a real email.</p>
			</div>
		</div>
	</div>
</body>
</html>