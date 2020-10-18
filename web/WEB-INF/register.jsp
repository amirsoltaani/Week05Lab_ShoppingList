<%-- 
    Document   : register
    Created on : 18-Oct-2020, 11:58:31 AM
    Author     : AmirS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Week 5: Register</title>
</head>
<body>
<h1>Shopping List</h1>
<form action="ShoppingList" method="post">
    <input type="text" name="username">
    <input type="hidden" name="action" value="register">
    <br>
    <input type="submit" value="Register">
    <p><i>${sessionScope.message}</i></p>
</form>
</body>
</html>
