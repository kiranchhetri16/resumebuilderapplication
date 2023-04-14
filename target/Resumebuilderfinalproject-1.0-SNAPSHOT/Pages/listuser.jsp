<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/13/2023
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>List User</title>
<style>
  .form-control {
    border-radius: 20px; /* add border radius */
    border-color: #ccc;
    margin-left: 500px;

    /* add border color */
  }

  /* Style for the search button */
  .btn-outline-success {
    border-color: #28a745; /* set border color */
    color: #28a745; /* set text color */
    margin-top: 20px;
  }
</style>
</head>
<body>
<%@ include file="../include/nav.jsp" %>
<%@page import="java.util.ArrayList" %>
<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.UserStudent" %>

<div id="wrapper">


  <div class="container">
    <form class="form-inline my-2 my-lg-0" action="user?page=search" method="post">
      <input class="form-control mr-sm-2" type="text" name="query" id="admsearchbox" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>

    <div class="table-responsive">
      <table class="table" style="margin-top:20px;">
        <tr>
          <th>id</th>
          <th>Full Name</th>
          <th>Username</th>
          <th>password</th>
          <%--                    <th>Role</th>--%>
        </tr>
        <%--<% ArrayList<> result=new ArrayList<>();--%>
        <%
          List<UserStudent> studentList = (List<UserStudent>) request.getAttribute("studentlist");
          for (UserStudent student : studentList) {
        %>

        <tr>
          <td><%=student.getId()%></td>

          <td><%=student.getFullname()%></td>
          <td><%=student.getUserName()%></td>
          <td><%=student.getPassword()%></td>

          <td><a href="user?page=userDetails&id=<%=student.getId()%>">View Details</a></td>
        </tr>
        <%
          }
        %>


      </table>
    </div>
  </div>

</div>
</body>
</html>