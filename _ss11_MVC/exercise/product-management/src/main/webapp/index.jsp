<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 11/30/2021
  Time: 11:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>List Product</title>
</head>
<body>
<h2>List Product</h2>
<table border="1">
    <tr>
        <th>No</th>
        <th>Id</th>
        <th>Name</th>
        <th>Price</th>
        <th>Amount</th>
    </tr>
    <c:forEach var="productObj" items="${product}" varStatus="loop">
        <tr>
            <td><c:out value="${loop.count}"/></td>
            <td><c:out value="${productObj.productId}"/></td>
            <td><c:out value="${productObj.productName}"/></td>
            <td><c:out value="${productObj.productPrice}"/></td>
            <td><c:out value="${productObj.productAmount}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
