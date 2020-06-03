<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 02/06/2020
  Time: 3:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<html>
<head>
    <title>List Customer</title>
    <%@ page isELIgnored="false" %>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
    <div class="col-md-12">
        <h2>Customer Manager</h2>
        <hr/>
        <input type="button" value="Thêm mới"
               onclick="window.location.href='showForm'; return false;"
               class="btn btn-primary"/> <br/> <br/>
        <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Danh sách khách hàng</div>
            </div>
            <div class="panel-body">
                <div class="table-responsive">
                    <table class="table table-striped table-bordered">
                        <tr>
                            <th>First Name</th>
                            <th>Last Name</th>
                            <th>Free Passes</th>
                            <th>Postal Code</th>
                            <th>Email</th>
                            <th>Action</th>
                        </tr>
                        <c:forEach var="tempCustomer" items="${customerList}">
                            <!-- construct an "update" link with customer id -->
                            <c:url var="updateLink" value="/updateForm">
                                <c:param name="customerId" value="${tempCustomer.id}" />
                            </c:url>

                            <!-- construct an "delete" link with customer id -->
                            <c:url var="deleteLink" value="/delete">
                                <c:param name="customerId" value="${tempCustomer.id}" />
                            </c:url>
                            <tr>
                                <td>${tempCustomer.firstName}</td>
                                <td>${tempCustomer.lastName}</td>
                                <td>${tempCustomer.freePasses}</td>
                                <td>${tempCustomer.postalCode}</td>
                                <td>${tempCustomer.email}</td>
                                <td>
                                    <a href="${updateLink}">Cập nhật</a> | <a href="${deleteLink}" onclick="if (!(confirm('Bạn muốn xóa thông tin khách hàng này?'))) return false">Xóa</a>
                                </td>
                            </tr>
                        </c:forEach>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
