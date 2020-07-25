<%--
  Created by IntelliJ IDEA.
  User: Filip Żegleń
  Date: 25.07.2020
  Time: 23:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet prefetch" href="main.css">
  <link href="https://fonts.googleapis.com/css2?family=Cuprum&amp;display=swap" rel="stylesheet">
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Tajna baza FBI</title>
</head>
<body>

<div class="borderStyle">
  <div class="tabHeader">
<h1>Zaloguj się</h1>
  </div>
  <div class="tabContent">
<form action="login" method="post">
  <div class="dataStyle">
  <input type="text" placeHolder="Username" name="username" class="inputStyle">
  <br>
  <input type="password" placeHolder="Password" name="password" class="inputStyle">
  <br>
  <input type="submit" value="Zaloguj" class="buttonStyle">
  </div>
</form>
  </div>
</div>

<div class="foot">project by Filip Żegleń</div>

</body>
</html>