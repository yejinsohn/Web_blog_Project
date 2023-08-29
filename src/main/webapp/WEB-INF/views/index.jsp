<%@ page language="java" contentType="text/html; charset=UTF-16"
    pageEncoding="UTF-16"%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>

<body>
<style>
  footer {
      background-color : Lightgray;
      padding : 15px;
    }
</style>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
  <a class="navbar-brand" href="/blog">Blog Home</a>

  <!-- Links -->
  <ul class="navbar-nav">
    <li class="nav-item">
      <a class="nav-link" href="/user/login">Login</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="/user/signup">sign up</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Dropdown link
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Link 1</a>
        <a class="dropdown-item" href="#">Link 2</a>
        <a class="dropdown-item" href="#">Link 3</a>
      </div>
    </li>
  </ul>
</nav>
<br>
  
<div class="container">
<!-- Card -->
  <div class="card m-3" style="width:600px">
    <div class="card-body">
      <h4 class="card-title">제목</h4>
      <p class="card-text">내용</p>
      <a href="#" class="btn btn-primary">더보기</a>
    </div>
  </div>
  <div class="card m-3" style="width:600px">
    <div class="card-body">
      <h4 class="card-title">제목</h4>
      <p class="card-text">내용</p>
      <a href="#" class="btn btn-primary">더보기</a>
    </div>
  </div>
    <div class="card m-3" style="width:600px">
    <div class="card-body">
      <h4 class="card-title">제목</h4>
      <p class="card-text">내용</p>
      <a href="#" class="btn btn-primary">더보기</a>
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="container-fluid navbar-fixed-bottom">
  <p style="text-align:center">💡 Created by yejin on 2023</p>
  <p style="text-align:center">📞 Instagram : y._.jin.120</p>
</footer>

<script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
 
</body>
</html>