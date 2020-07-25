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
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Tajna baza FBI</title>
</head>
<body>
<h1>Zaloguj się</h1>
<form action="login" method="post">
  <input type="text" placeHolder="Username" name="username">
  <br>
  <input type="password" placeHolder="Password" name="password">
  <br>
  <input type="submit" value="Zaloguj">
</form>
</body>
</html>