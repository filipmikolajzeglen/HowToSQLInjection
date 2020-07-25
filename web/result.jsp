<%--
  Created by IntelliJ IDEA.
  User: Filip Żegleń
  Date: 25.07.2020
  Time: 23:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java"
         contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Witaj</title>
</head>
<body>
<h1>Witaj <%= session.getAttribute("username") %></h1>
<h2>Twoje uprawnienia: <%= session.getAttribute("privigiles") %></h2>
</body>
</html>