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
		<h3 id="title">My Resume</h3>
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
						<object data="/media/ResumeRedacted.pdf"  style=" height:823px;  overflow:scroll"></object>
					</c:when>
					<c:otherwise>
						<object data="/media/JosephLMartinez.pdf"  style=" height:823px;  overflow:scroll"></object>
					</c:otherwise>
				</c:choose>
				<object data="/media/JosephLMartinez.pdf"  style="height:823px;  overflow:scroll"></object>
				<p id="outro"> I apologize if a lack of personal information was visually offputting when
				reading my resume. I removed my name, address, links, and dates from my resume for personal
				security reasons. If you are interested in downloading my resumme or simply exchanging
				information, please click <a href="/login">HERE</a> or see the link at the top right of the
				page labeled "Contact Information"</p>
			</div>
		</div>
	</div>
</body>
</html>