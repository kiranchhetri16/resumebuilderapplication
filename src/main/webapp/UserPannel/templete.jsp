<%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 4/11/2023
  Time: 11:16 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <style>
        .container {
            position: relative;
            width: 100%;
            /* max-width: 400px; */
            height: 100%;

        }
        /* navbar */
        .navbar{
            height: 70px;
            width: 100%;
            /* background-color: wheat; */
            border: 1px solid #c3c3c3;
            display: flex;
            flex-wrap: wrap;

        }
        .logo{
            width: 100px;
            margin-left: 10px;
        }

        .navbar ul{ float: left; margin-left: 100px;}
        .navbar ul li{
            display:inline-block ;
            color: white;
            text-align: center;
            padding: 16px;


        }
        .navbar ul li a{
            padding: 16px;
            color:black;
            text-decoration: none;
        }
        .MyPfofile{
            margin-left: 400px;
            padding-top: 30px;
        }
        .logout{
            margin-left: 20px;
            padding-top: 30px;
        }


        .logo{
            display: flex;
            align-content: center ;
        }

        .logo :hover{
            cursor: pointer;
        }
        /* dropdown */
        .dropdown {
            position: relative;
            display: inline-block;
            display: flex;align-items: center;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 50px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            padding: 12px 16px;
            z-index: 1;

        }
        .dropdown-content a{
            text-align: center;
            align-items: center;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
        .form-control {
            border-radius: 20px; /* add border radius */
            border-color: #ccc;
            margin-left: 100px;
            margin-top: 30px;
            height: 30px;
            /* add border color */
        }
        .btn-outline-success {
            border-color: #28a745; /* set border color */
            color: #28a745; /* set text color */
            height: 30px;
        }

        /* image */
        .container img {
            width: 20%;
            height: 50%;
            margin-left: 30%;
        }

        .container .btn {
            position: absolute;
            top: 90%;
            left: 50%;
            transform: translate(-50%, -50%);
            -ms-transform: translate(-50%, -50%);
            background-color: #555;
            color: white;
            font-size: 16px;
            padding: 12px 24px;
            border: none;
            cursor: pointer;
            border-radius: 5px;
            text-align: center;
        }
        .container .btn a{
            color: white;
            list-style: none;
            text-decoration: none;
        }

        .container .btn:hover {
            background-color: black;
        }
        .footer {
            text-align: center;
            margin-top: 50px;
            padding: 20px;
            background-color: #f5f5f5;
        }

        .footer h3 {
            font-size: 24px;
            margin-top: 0;
        }

        .footer h6 {
            font-size: 16px;
            margin-top: 5px;
            margin-bottom: 0;
        }

        .fa {
            font-size: 24px;
            color: #666;
            margin: 10px;
        }

        .fa:hover {
            color: #333;
        }

    </style>
</head>
<body>

<!-- <h2>Button on Image</h2>
<p>Add a button to an image:</p> -->

<div class="navbar">
    <div class="logo" >
        <img src="../images/cv.png " style="height: 70px; width: 110px;" alt=""></div>

    <ul>
        <li><a href="">Home</a></li>

        <li><a href="#app1">FAQ</a></li>
        <li><a href="">About</a></li>
    </ul>
    <div class="dropdown">
        <span>Resume</span>
        <div class="dropdown-content">
            <a href="UserPannel/dashboard.jsp">CV</a>
            <a href="UserPannel/templete.jsp">Templetes</a>
            <!-- <p>CV</p>
            <p>Templetes</p> -->
        </div>
    </div>
    <div class="MyPfofile">
        <a href="" >MyProfile</a>
    </div>
    <div class="logout">
        <a href="../customer?page=changingpassword">Log Out</a>
    </div>
    <!-- search-->
    <form class="form-inline my-2 my-lg-0" action="customer?page=search" method="post">
        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
</div>

<!-- container -->
<div class="container">
    <!-- Navbar -->
    <!-- <div class="navbar">
      <div class="logo" >
          <img src="cv.png " style="height: 70px; width: 110px;" alt=""></div>

      <ul>
          <li><a href="">Home</a></li>
          <li><a href="templete.html">Resume</a></li>
          <li><a href="#app1">FAQ</a></li>
          <li><a href="">About</a></li>
      </ul>
      <div class="MyPfofile">
          <a href="" >MyProfile</a>
      </div>
      <div class="logout">
          <a href="../customer?page=changingpassword">Log Out</a>
      </div>
      search -->
    <!-- <form class="form-inline my-2 my-lg-0" action="customer?page=search" method="post">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
  </form>
</div> -->
    <!-- image -->
    <img src="../images/resume.png" alt="Snow" style="width:40%">
    <button class="btn"><a href="../UserPannel/dashboard.jsp">Choose this templete</a></button>
</div>
<div class="footer">
    <h3>&copy kiran Chhetri</h3>
    <h6>Lalitpur, Jaulakhel</h6>
    <a href="https://www.facebook.com/"class="fa fa-facebook"></a>
    <a href="https://www.instagram.com/" class="fa fa-instagram"></a>

</div>

</body>
</html>
