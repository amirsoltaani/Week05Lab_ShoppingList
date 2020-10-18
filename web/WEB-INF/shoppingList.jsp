<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
    Document   : shoppingList
    Created on : 18-Oct-2020, 11:58:44 AM
    Author     : AmirS
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Week 5: Shopping List</title>
</head>
<body>
<h1>Shopping List</h1>
<p>Hello ${sessionScope.user}</p>
<p><a href="<c:url value='/ShoppingList?action=logout'/>">Logout</a></p>
<form action="" method="post">
    <h2>Add Item</h2>
    <input type="text" name="item">
    <input type="submit" value="Add Item">
    <input type="hidden" name="action" value="add">
    <p><i>${sessionScope.message}</i></p>
</form>

<form action="" method="post">
    <ul>
        <c:forEach items='${sessionScope.items}' var='item'>
            <li>
                <input type="radio" name="item" value="${item}">${item}
            </li>
        </c:forEach>
    </ul>
    <input type="submit" value="Delete">
    <input type="hidden" name="action" value="delete">
</form>
</body>
</html>
