<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>
<title>Blog</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
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
			<a class="navbar-brand" href="/blog">Our_blog</a>

			<!-- Link -->
			<div class="collapse navbar-collapse justify-content-end" id="collapsibleNavbar">
				<c:choose>
					<c:when test="${empty sessionScope.auth}">
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="/blog/auth/loginForm">Login</a></li>
							<li class="nav-item"><a class="nav-link" href="/blog/auth/signForm">SignUp</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav">
							<li class="nav-item"><a class="nav-link" href="/blog/board/story">Story</a></li>
							<li class="nav-item"><a class="nav-link" href="/blog/board/write">Write</a></li>
							<li class="nav-item"><a class="nav-link" href="/blog/user/logout">Logout</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
	<br>