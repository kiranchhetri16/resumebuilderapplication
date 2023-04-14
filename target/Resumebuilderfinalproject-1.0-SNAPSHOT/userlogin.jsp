<%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/25/2023
  Time: 4:28 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Full-Stack Application</title>

  <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
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


<div class="container">
<h2>Log In</h2>
  <form action="customer?page=login" method="post">
    <input type="hidden" name="page" value="LOGIN"></input>
    <div class="form-group">
      <label for="UserName">UserName</label>
      <input type="text" name="username" class="form-control" id="UserName" placeholder="Enter your UserName " value="kiran">
    </div>
    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" name="password" class="form-control" id="password" placeholder="Enter your Password" value="12345">
    </div>

    <input type="submit" class="btn btn-success" value="Login">
    <a href="customer?page=newUsers">Not a Member yet? Register</a>
<%--    <a href="forgotpassword.jsp">Forgot Password</a>--%>
  </form>
</div>
</body>
</html>
