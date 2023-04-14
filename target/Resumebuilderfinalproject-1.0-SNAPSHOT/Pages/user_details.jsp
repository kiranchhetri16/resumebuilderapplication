<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.UserStudent" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/23/2023
  Time: 9:47 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>User details</title>
<%--<style>--%>
<%--  table {--%>
<%--    border-collapse: collapse;--%>
<%--    width: 100%;--%>
<%--    margin-bottom: 1rem;--%>
<%--  }--%>

<%--  th,--%>
<%--  td {--%>
<%--    text-align: left;--%>
<%--    padding: 0.75rem;--%>
<%--    vertical-align: top;--%>
<%--    border-top: 1px solid #dee2e6;--%>
<%--  }--%>

<%--  th {--%>
<%--    background-color: #f8f9fa;--%>
<%--    font-weight: 500;--%>
<%--  }--%>

<%--  td a {--%>
<%--    text-decoration: none;--%>
<%--    color: #007bff;--%>
<%--  }--%>

<%--  td a:hover {--%>
<%--    text-decoration: underline;--%>
<%--  }--%>

<%--</style>--%>

</head>
<body>
<div id="wrapper">

  <%@ include file="../include/nav.jsp"%>

  <div class="container">
    <div class="table-responsive">
      <table class="table">
        <%
          UserStudent student = (UserStudent) request.getAttribute("userDetails");


        %>

        <tr>
          <th>id</th>
          <td> <%=student.getId()%></td>
        </tr>
        <tr>
          <th>Full Name</th>
          <td><%=student.getFullName()%></td>
        </tr>
        <tr>
          <th>Username</th>
          <td><%=student.getUserName()%></td>
        </tr>
        <tr>
          <th>Password</th>
          <td><%=student.getPassword()%></td>
        </tr>
        <tr>
          <td><a href="user?page=editUser&id=<%=student.getId()%>">Edit</a></td>
          <td><a href="user?page=deleteUser&id=<%=student.getId()%>">Delete</a></td>
        </tr>
      </table>
    </div>
  </div>
</div>

</body>
</html>