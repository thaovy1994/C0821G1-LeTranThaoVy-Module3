<%--
  Created by IntelliJ IDEA.
  User: Dell
  Date: 12/8/2021
  Time: 11:08 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body class="bg-image"
      style="
    background-image: url('https://bgwall.net/wp-content/uploads/2014/09/Dandelion-Flower-Wallpaper-Full-HD.jpg');
      height: 400px;"
>
<div class="row">
    <div class="col-lg-1">
        <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSmzVHX-tqV7TnaGm1NeHANiMX1dcGm4bfHrQ&usqp=CAU"
             width="100px">
    </div>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="/index.jsp">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/index_customer?action=create">Create</a>
                    </li>
                    <li class="nav-item">
                        <%--<a class="nav-link" href="/index_customer?action=delete">Delete</a>--%>
                        <button type="button" class="nav-item btn btn-primary" data-bs-toggle="modal" data-bs-target="#myModal">
                            Delete
                        </button>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/index_customer?action=edit">Edit</a>
                    </li>
                </ul>
                <form class="d-flex" method="post">
                    <input type="hidden" name="action" value="search">
                    <input class="form-control me-2" type="search" aria-label="Search" name="name"
                           placeholder="Input name">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
            </div>
        </div>
    </nav>
</div>
<form class="bg-info">
    <c:out value="${msg}"></c:out>
    <div class="row">
        <div class="col-lg-12">
            <table class="table">
                <thead>
                <tr style="text-align: center">
                    <th scope="col">Id</th>
                    <th scope="col">Name</th>
                    <th scope="col">Date of birth</th>
                    <th scope="col">Gender</th>
                    <th scope="col">Id Card</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Email</th>
                    <th scope="col">Address</th>
                    <th scope="col">Type of customer</th>
                </tr>
                </thead>
                <tbody class="content" style="color: white">
                <c:forEach var="customers" items="${customer}">
                    <tr>
                        <th scope="col"><c:out value="${customers.customer_id}"/></th>
                        <td><c:out value="${customers.customer_name}"/></td>
                        <td><c:out value="${customers.customer_birthday}"/></td>
                        <td>
                            <c:if test="${customers.customer_gender == 1}">
                                Female
                            </c:if>
                            <c:if test="${customers.customer_gender == 0}">
                                Male
                            </c:if>
                        </td>
                        <td><c:out value="${customers.customer_id_card}"/></td>
                        <td><c:out value="${customers.customer_phone}"/></td>
                        <td><c:out value="${customers.customer_email}"/></td>
                        <td><c:out value="${customers.customer_address}"/></td>
                        <td>
                            <c:if test="${customers.customer_type_id == 1}">
                                Diamond
                            </c:if>
                            <c:if test="${customers.customer_type_id == 2}">
                                Platinum
                            </c:if>
                            <c:if test="${customers.customer_type_id == 3}">
                                Gold
                            </c:if>
                            <c:if test="${customers.customer_type_id == 4}">
                                Silver
                            </c:if>
                            <c:if test="${customers.customer_type_id == 5}">
                                Member
                            </c:if>
                        </td>
                    </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
    </div>
</form>
<form method="post">
    <div class="modal fade" id="myModal" role="dialog" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
         aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Confirmation</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <input type="text" name="id" placeholder="id" class="form-control">
                    <p>Are you sure to delete customer?</p>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                    <button type="submit" name="delete" class="btn btn-primary">Delete</button>
                    <input type="hidden" name="action" value="delete">
                </div>
            </div>
        </div>
    </div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
    var myModal = new bootstrap.Modal(document.getElementById('myModal'), {})
    myModal.target()
</script>
</body>
</html>
