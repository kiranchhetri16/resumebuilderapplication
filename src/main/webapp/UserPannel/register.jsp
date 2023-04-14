<%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/25/2023
  Time: 4:29 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Register Page</title>
  <%--    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">--%>
  <style>
    .container{
      border: 1px solid #ccc;
      border-radius: 5px;
      padding: 20px;
      max-width: 530px;
      margin: 0 auto;
      margin-top: 150px;
      height: 400px;
    }
    .container form{
      display: flex;
      flex-direction: column;
    }
    .form-group{
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
  <h2>Register</h2>
  <form action="customer?page=register" method="post">
    <input type="hidden" name="page" value="REGISTER"></input>
    <div class="form-group">
      <label for="UserName">UserName</label>
      <input type="text" name="username" class="form-control" id="UserName" placeholder="Enter your UserName ">
    </div>
    <div class="form-group">
      <label for="Full Name">Full Name:</label>
      <input type="text" name="fullname" class="form-control" id="Full Name" placeholder="Enter your Full Name">
    </div>

    <div class="form-group">
      <label for="password">Password</label>
      <input type="password" name="password" class="form-control" id="password" placeholder="Enter your Password">
    </div>
    <input type="submit" class="btn btn-success" value="Register">
    <a href="customer?page=login">Already a Member GO TO Login </a>
  </form>
</div>
</body>
</html>