<%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 4/8/2023
  Time: 4:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
 <style>
  *{
   padding: 0;
   margin: 0;
   font-family: sans-serif;
  }


  .container1{
   height: 100%;
   width: 100%;
   /* background-color: aqua; */



  }
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

  .navbar ul{ float: left; margin-left: 300px;}
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
   padding-top: 20px;
  }
  .logout{
   margin-left: 20px;
   padding-top: 20px;
  }


  .logo{
   display: flex;
   align-content: center ;
  }

  .logo :hover{
   cursor: pointer;
  }
  body{
   background-color: white;
   /*display: flex;*/
   /*justify-content: center;*/
   /*align-items: center;*/
   /*min-height: 100vh;*/
  }



  .  container2{
   display: flex;
   justify-content: center;
   align-items: center;
   min-height: 100vh;
  }
  form {
   max-width: 600px;
   margin: auto;
   padding: 20px;
   font-size: 16px;
   font-family: Arial, sans-serif;
  }
  h3 {
   font-weight: bold;
   margin-top: 20px;
   margin-bottom: 10px;
  }

  input[type=text],
  input[type=email],
  input[type=number],
  textarea {
   width: 100%;
   padding: 12px;
   border: 1px solid #ccc;
   border-radius: 4px;
   box-sizing: border-box;
   margin-top: 6px;
   margin-bottom: 16px;
   resize: vertical;
   font-size: 16px;
  }

  input[type=year],
  input[type=date] {
   width: 100%;
   padding: 12px;
   border: 1px solid #ccc;
   border-radius: 4px;
   box-sizing: border-box;
   margin-top: 6px;
   margin-bottom: 16px;
   font-size: 16px;
  }

  input[type=submit] {
   background-color: #4CAF50;
   color: white;
   padding: 12px 20px;
   border: none;
   border-radius: 4px;
   cursor: pointer;
  }

  input[type=submit]:hover {
   background-color: #45a049;
  }

  .contact, .education, .language, .profile, .experience, .skill, .certificate, .award, .hobby {
   border: 1px solid #ccc;
   border-radius: 4px;
   margin-bottom: 20px;
   padding: 20px;
  }

  .prof1, .prof2, .prof3, .prof4, .prof5, .prof6, .prof7, .prof8, .prof9, .prof10, .profile1, .profile2, .profile3, .profile4, .skill1, .skill2, .certificate1, .certificate2, .award1, .award2, .bobby1 {
   width: 100%;
  }

 </style>
</head>
<body>
<div class="container1" >

 <div class="navbar">
  <div class="logo" >
   <img src="images/cv.png " style="height: 70px; width: 110px;" alt=""></div>

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
 </div>
 <%--    //form--%>
 <div class="container2">
  <form action="../user?page=addCV"   method="post" >
   <input type="text" class="prof1" name="fullname" placeholder="Enter full name" >
   <input type="text" class="prof2" name="profession" placeholder="Enter your profession" >
   <div class="contact">
    <h3>Contact Information</h3>
    <input type="number" class="prof3" name="contact" placeholder="Enter Phone Number" >
    <input type="email" class="prof4" name="email" placeholder="Enter email">
    <input type="text" class="prof5" name="address" placeholder="Enter address" >
   </div>
   <div class="education">
    <h3>Education</h3>
    <input type="year" class="prof6" name="edyear" placeholder="Enter schooling year" >
    <input type="text" class="prof7" name="eduname" placeholder="Enter school/college name" >
    <input type="text" class="prof8" name="education" placeholder="Enter education" >
   </div>
   <div class="language">
    <h3>Language</h3>
    <input type="text" class="prof9" name="language" placeholder="Enter language" >
    <input type="number" class="prof10" name="langlevel" placeholder="Enter level" >
   </div>
   <div class="profile">
    <h3>Profile</h3>
    <textarea name="profile" class="profile1" placeholder="Describe yourself"></textarea>
   </div>
   <div class="experience">
    <h3>Experience</h3>
    <input type="year" class="profile2" name="expyear" placeholder="Enter experience year">
    <input type="text" class="profile3" name="companyname" placeholder="Enter company name">
    <input type="text" class="profile5" name="position" placeholder="Enter your position">
    <textarea class="profile4" name="experience" placeholder="Enter your experience"></textarea>
   </div>
   <div class="skill">
    <h3>Professional Skills</h3>
    <input type="text" class="skill1" name="skills" placeholder="Enter your professional skills">
    <input type="number" class="skill2" name="skillslevel" placeholder="Enter skill level">
   </div>
   <div class="certificate">
    <h3>Certificate</h3>
    <input type="text"  class="certificate1" name="certificatename" placeholder="Enter certificate name">
    <input type="date" class="certificate2" name="certificatedate" placeholder="Enter date">
   </div>
   <div class="award">
    <h3>Awards</h3>
    <input type="text" class="award1" name="awardname" placeholder="Enter awards">
    <input type="date" class="award2" name="awarddate" placeholder="Enter date">
   </div>
   <div class="hobby">
    <h3>Hobbies</h3>
    <textarea  class="bobby1" name="interest" placeholder="Enter your hobbies"></textarea>
   </div>
   <input type="submit" value="Add"  >

  </form>
 </div>
</div>
</body>
</html>
