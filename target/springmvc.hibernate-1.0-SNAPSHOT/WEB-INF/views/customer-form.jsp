<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: This MC
  Date: 02/06/2020
  Time: 5:06 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>
<div class="container">
<div class="col-md-12">
    <h4 class="text-center">Điền thông tin</h4>
    <div class="panel panel-info">
        <div class="panel-heading">
            <div class="panel-title">
                Thêm mới customer
            </div>
        </div>
        <div class="panel-body">
            <form:form action="saveCustomer" modelAttribute="customer" cssClass="form-horizontal" method="post">
                <form:hidden path="id"/>
                <div class="form-group">
                    <label for="firstName" class="col-md-3 control-label">Họ</label>
                    <div class="col-md-9">
                        <form:input path="firstName" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="lastName" class="col-md-3 control-label">Tên(*)</label>
                    <div class="col-md-9">
                        <form:input path="lastName" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="freePasses" class="col-md-3 control-label">Free Passes(*)</label>
                    <div class="col-md-9">
                        <form:input path="freePasses" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="postalCode" class="col-md-3 control-label">PostalCode(*)</label>
                    <div class="col-md-9">
                        <form:input path="postalCode" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <label for="email" class="col-md-3 control-label">Email(*)</label>
                    <div class="col-md-9">
                        <form:input path="email" cssClass="form-control"/>
                    </div>
                </div>
                <div class="form-group">
                    <!-- Button -->
                    <div class="col-md-offset-3 col-md-9">
                        <button type="submit" class="btn btn-primary">Lưu</button>
                    </div>
                </div>
            </form:form>
        </div>
    </div>
</div>
</div>
</body>
</html>
