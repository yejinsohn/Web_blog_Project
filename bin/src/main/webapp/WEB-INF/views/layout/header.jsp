<%@ page language="java" contentType="text/html; charset=UTF-16"
	pageEncoding="UTF-16"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<sec:authorize access="isAuthenticated()">
	<sec:authentication property="principal" var="principal" />
</sec:authorize>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Flash Heaven</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
</head>

<body>
	<style>
footer {
	background-color: Lightgray;
	padding: 15px;
}
</style>

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
		<!-- Brand -->
		<div class="container-fluid">
			<a class="navbar-brand" href="/">플래시 천국</a>

			<!-- Link -->
			<div class="collapse navbar-collapse justify-content-end"
				id="collapsibleNavbar">
				<c:choose>
					<c:when test="${empty principal}">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link"
								href="/auth/loginForm">Login</a></li>
							<li class="nav-item"><a class="nav-link"
								href="/auth/signForm">SignUp</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="/board/form">Write</a></li>
							<li class="nav-item"><a class="nav-link" href="/user/form">Friends</a></li>
							<li class="nav-item"><a class="nav-link" href="/logout">Logout</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
	<br>