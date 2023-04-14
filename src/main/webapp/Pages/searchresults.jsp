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
            margin-left: 200px;
            /* add border color */
        }

        /* Style for the search button */
        .btn-outline-success {
            border-color: #28a745; /* set border color */
            color: #28a745; /* set text color */
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


        <div class="table-responsive">
            <table class="table">
                <tr>
                    <th>id</th>
                    <th>Full Name</th>
                    <th>Username</th>
                    <th>password</th>
                    <%--                    <th>Role</th>--%>
                </tr>
                <%--<% ArrayList<> result=new ArrayList<>();--%>
                <%
                    List<UserStudent> subsearch = (List<UserStudent>) request.getAttribute("subsearch");
                    for (UserStudent student : subsearch) {
                %>

                <tr>
                    <td><%=student.getId()%></td>

                    <td><%=student.getFullName()%></td>
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