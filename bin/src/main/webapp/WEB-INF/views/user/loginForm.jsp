<%@ page language="java" contentType="text/html; charset=UTF-16" pageEncoding="UTF-16"%>

<%@include file="../layout/header.jsp"%>
</br>

<div class="container">
	<form action="#" method="post">
		<div class="form-group">
			<label for="username">User name:</label> <input type="text" name="username"
				class="form-control" placeholder="Enter name" id="username">
		</div>
		<div class="form-group">
			<label for="password">Password:</label> <input type="password" name="password"
				class="form-control" placeholder="Enter password" id="password">
		</div>
		
		<div class-"form-group form-check">
		<label class="form-check-label"><input name="rember" class="form-check-input" type="checkbox"> Remember me</label>
		</div>
		<button id="btn-login" class="btn btn-primary">Login</button>
	</form>
</div>

<br>
<%@include file="../layout/footer.jsp"%>