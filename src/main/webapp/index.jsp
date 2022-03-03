<%@ page import="java.util.List" %>
<%@ page import="com.codegym.Customer" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: TOAN NGUYEN
  Date: 3/3/2022
  Time: 2:32 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Customer List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>
<%
    List<Customer> customers = new ArrayList<>();
    customers.add(new Customer("Lê Thị Huyền Anh", "01-01-1992", "Nghệ An", "/img/LeThiHuyenAnh.jpg"));
    customers.add(new Customer("Ngọc Trinhh", "02-02-1993", "Trà Vinh", "/img/NgocTrinh.jpg"));
    customers.add(new Customer("Lan Ngọc", "01-01-1992", "HN", "/img/NinhDuongLanNgoc.jpg"));
    customers.add(new Customer("Thu Quỳnh", "01-01-1992", "Thanh Hóa", "/img/ThuQuynh.jpg"));
    customers.add(new Customer("Yến Xôi", "01-01-1992", "Thai Nguyên", "/img/YenXoi.jpg"));
    pageContext.setAttribute("listCustomer", customers);
%>
<h1>Danh sách khách hàng</h1>
<table class="table">
    <thead>
    <tr>
        <th scope="col">Tên</th>
        <th scope="col">Ngày sinh</th>
        <th scope="col">Địa chỉ</th>
        <th scope="col">Ảnh</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="customer" items="${listCustomer}">
        <tr>
            <th scope="row">${customer.name}</th>
            <td>${customer.dateOfBirth}</td>
            <td>${customer.adress}</td>
            <td>@<img src="${customer.image}" alt="Ảnh khách hàng" width="150" height="250"></td>
        </tr>
    </c:forEach>
    </tbody>
</table>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
