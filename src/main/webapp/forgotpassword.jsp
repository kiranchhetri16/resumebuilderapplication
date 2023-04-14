<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 4/8/2023
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Forgot Password</title>
  <style>

    .container{
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
      max-width: 530px;
      margin: 0 auto;
      margin-top: 200px;
      /*height: 600px;*/
    }
    .container form{
      display: flex;
      flex-direction: column;
    }
    .container label{
      font-weight: bold;
      margin-top: 16px;
    }
    .form-control{
      margin-bottom: 20px;
      padding: 10px;
      border-radius: 5px;
      border: 1px solid #ccc;
      font-size: 16px;
      width: 500px;
    }
    .btn-success{
      padding: 10px;
      background-color: #28a745;
      color: #fff;
      border: none;
      border-radius: 5px;
      font-size: 16px;
      cursor: pointer;
      transition: background-color 0.2s ease;
      width: 500px;
      height: 30px;
    }
  </style>
</head>
<body>
<%--<%--%>
<%--  PrintWriter a=response.getWriter();%>--%>
<%--<%try{%>--%>
<div class="container">
  <h2>Forget Password</h2>
<form action="customer?page=changingpassword" method="post">
  <input type="hidden" name="page" value="FORGOT PASSWORD"></input>
<%--  <div class="form-group">--%>
<%--    <label for="UserName">UserName</label>--%>
<%--    <input type="text" name="username" class="form-control" id="UserName" placeholder="Enter your UserName ">--%>
<%--  </div>--%>
  <div class="form-group">
    <label for="oldpassword">OldPassword</label>
    <input type="password" name="oldpassword" class="form-control" id="oldpassword" placeholder="Enter your Password">
  </div>
  <div class="form-group">
    <label for="newpassword">NewPassword</label>
    <input type="password" name="newpassword" class="form-control" id="newpassword" placeholder="Enter your Password">
  </div>
  <input type="submit" class="btn btn-success" value="Submit">

</form>
</div>
</body>
</html>
