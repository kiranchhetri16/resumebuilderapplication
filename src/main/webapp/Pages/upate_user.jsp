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


</head>
<body>
<div id="wrapper">

  <%@ include file="../include/nav.jsp" %>

  <div class="container">
    <div class="table-responsive">
      <table class="table">
        <%
          UserStudent student = (UserStudent) request.getAttribute("userDetails");
//          for (UserStudent student : userDetails) {
        %>

        <tr>
          <th>id</th>
          <td><input type="number" value="<%=student.getId()%>"></td>
        </tr>
        <tr>
          <th>Full Name</th>
          <td><input type="text" value="<%=student.getFullname()%>"></td>
        </tr>
        <tr>
          <th>Username</th>
          <td><input type="text" value="<%=student.getUserName()%>" ></td>
        </tr>
        <tr>
          <th>Password</th>
          <td><input type="password" value="<%=student.getPassword()%>"></td>
        </tr>
        <tr>
          <td><a href="user?page=userEdit&id=<%=student.getId()%>">Save</a></td>
          <td><a href="user?page=deleteUser&id=<%=student.getId()%>">Delete</a></td>
        </tr>
      </table>
    </div>
  </div>
</div>

</body>
</html>