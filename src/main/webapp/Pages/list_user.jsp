<%@ page import="Model.Student" %>
<%@ page import="java.util.List" %>
<%@ page import="Model.UserStudent" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/22/2023
  Time: 4:05 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Title</title>


  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

</head>
<body>

<%@ include file="../include/nav.jsp"%>

<div class="container">
  <form action="user?page=search" method="get">
    <input type="text" name="search" placeholder="Search...">
    <button type="submit"><i class="uil uil-search"></i></button>
  </form>
<% PrintWriter s=response.getWriter();%>
  <% try{%>
  <div class="table-responsive">
    <table class="table">
      <tr>
        <th>id</th>
        <th>FullName</th>
        <th>Username</th>
        <th>password</th>

      </tr>
      <%
        List<UserStudent> userList = (List<UserStudent>) request.getAttribute("userList");
        for (UserStudent student : userList) {
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
      <%} catch(Exception e){
    s.println("error"+e);
      }
    %>
      }

    </table>
  </div>
  <a href="user?page=newUsers"><h4>Add New User</h4></a>
</div>

</div>

</body>
</html>