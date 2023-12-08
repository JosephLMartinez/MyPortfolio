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
		<h3 id="title">My Cover Letter</h3>
		<div id="Everything_Important">
			<div id="options_on_left">
				<a href="/" class="menu_links">Welcome Page</a>
				<a href="/projects" class="menu_links">Projects</a>
				<a href="/resume" class="menu_links">Resume</a>
				<a href="/coverletter" class="menu_links">Cover Letter</a>
				<a href="" class="menu_links">Conquered Mountains</a>
			</div>
			<div>
			<c:choose>
				<c:when test="${currentUser==null}">
					<object data="/media/RedactedCoverLetter.pdf"  style=" height:823px;  overflow:scroll"></object>
				</c:when>
				<c:otherwise>
					<object data="/media/CoverLetter.pdf"  style=" height:823px;  overflow:scroll"></object>
				</c:otherwise>
			</c:choose>
				<p id="outro"> I created this website specifically so that I could get a more personalized message across to my future employer.
				Normally this goal is achieved by attaching a cover letter to applications. On those applications I take my time to address the
				company, my experience, and my desire to become a team member. Unfortunately, On many applications I found that I could not breach 
				this gap using a cover letter. There would be no option to attach one and the CV would take a single file that needed to be reserved 
				for my resume, however, some applications did leave the option for an applicant to link a website. I wrote this cover letter
				specifically for my website. While your company is not specifically addressed, the passion I carry to great impact wherever I go
				is sincere, as is my hope that you consider me for the opportunity to make that impact with you.  </p>
			</div>
		</div>
	</div>
</body>
</html>