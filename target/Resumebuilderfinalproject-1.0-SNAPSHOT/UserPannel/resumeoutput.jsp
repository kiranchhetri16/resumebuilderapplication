<%@ page import="Model.UserStudent1" %>
<%@ page import="jakarta.servlet.http.*" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 3/30/2023
  Time: 10:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--    @import url('https://fonts.googleapis.com/css?family=Poppins:200,300,400,500,600,700,800,900&display=swap');--%>
    <link rel="" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.css" integrity="sha512-5A8nwdMOWrSz20fDsjczgUidUBR8liPYU+WymTZP1lmY9G6Oc7HlZv156XqnsgNUzTyMefFTcsFH/tnJE/+xBg==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        *
        {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins',sans-serif;
        }
        body{
            /*background-color: lightblue;*/
            /*display: flex;*/
            /*justify-content: center;*/
            /*align-items: center;*/
            /*min-height: 100vh;*/
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


        .logo{
            display: flex;
            align-content: center ;
        }

        .logo :hover{
            cursor: pointer;
        }
        /*//pfd*/
        .body1{
            /*background-color: lightblue;*/
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container
        {
            position: relative;
            width:100%;
            max-width: 1000px;
            min-height: 1200px;
            background: #fff;
            margin: 50px;
            display: grid;
            grid-template-columns: 1fr 2fr;
            box-shadow: 0 35px 55px rgb(0,0,0,0.1);
        }
        .container .left_side
        {
            position: relative;
            background: #003147;
            padding: 40px;

        }
        .profileText
        {
            position: relative;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 1px solid rgb(255, 255, 255, 0.2);
        }
        .profileText .imgBx
        {
            position: relative;
            width: 200px;
            height: 200px;
            border-radius: 50px;
            overflow: hidden;


        }
        .profileText .imgBx img
        {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;

        }
        .profileText h2{
            color: #fff;
            font-size: 1.5em;
            margin-top: 20px;
            text-transform: uppercase;
            text-align: center;
            font-weight: 600;
            line-height: 1.4em;

        }
        .profileText h2 span
        {
            font-size: 0.8em;
            font-weight: 300;
        }
        .contactInfo
        {
            padding: 40px;
        }
        .title
        {
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 1px;
            margin-bottom: 20px;

        }
        .contactInfo ul{
            position: relative;

        }
        .contactInfo ul li
        {
            position: relative;
            list-style: none;
            margin: 10px 0 ;

        }
        .contactInfo ul li .icon
        {
            display: inline-block;
            width: 30px;
            font-size: 18px;
            color: #03a9f4;
        }
        .contactInfo ul li span
        {
            color: #fff;
            font-weight: 300;
        }
        .contactInfo_education{
            padding: 40px;
        }

        .contactInfo_education li
        {
            list-style: none;
            margin-bottom: 10px;
        }
        .contactInfo_education h5{
            color: #03a9f4;
            font-weight: 500;
        }
        .contactInfo_education h4{
            color: #fff;
            font-weight: 500;
        }
        .contactInfo_education h4 :nth-child(2){
            color: #fff;
            font-weight: 500;
        }
        .contactInfo_language
        {
            padding: 40px;
        }

        .contactInfo_language ul li{
            list-style: none;
        }
        .contactInfo_language ul li span{
            color: #fff;
        }
        .contactInfo_language .percent
        {
            position: relative;
            width: 100%;
            height: 6px;
            background: #081921;
            display: block;
            margin-top: 5px;
        }
        .contactInfo_language .percent div
        {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            background:#03a9f4 ;
        }







        .container .right_side
        {
            position: relative;
            background: #fff;
            padding: 40px;

        }
        .about
        {
            margin-bottom: 50px;

        }
        .about:last-child
        {
            margin-bottom: 0;
        }
        .title2
        {
            color:#003147;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-bottom: 10px;
        }
        p{
            color: #333;
        }
        .about .box
        {
            display: flex;
            flex-direction: row;
            margin: 20px 0;
        }
        .about .box .year_company
        {
            min-width: 150px;
        }
        .about .box .year_company h5{
            text-transform: uppercase;
            color: #848c84;
            font-weight: 600;
        }
        .about .box .text1 h4{
            text-transform: uppercase;
            color: #2a7da2;
            font-size: 16px;
        }
        .skills .box{
            position: relative;
            width: 100%;
            display: grid;
            grid-template-columns: 150px 1fr;
            justify-content: center;
            align-items: center;
        }
        .skills .box h4{
            text-transform: uppercase;
            color: #848c99;
            font-weight: 500;
        }
        .skills .box  .percent
        {
            position: relative;
            width: 100%;
            height: 10px;
            background: #f0f0f0;


        }
        .skills .box  .percent div
        {
            position: absolute;
            top: 0;
            left: 0;
            height: 100%;
            background: #03a9f4;
        }

        .about .box
        {
            display: flex;
            flex-direction: row;
            margin: 20px 0;
        }
        .about .box .year_company
        {
            min-width: 150px;
        }
        .about .box .year_company h5{
            text-transform: uppercase;
            color: #848c84;
            font-weight: 600;
        }
        .about .box .text h4{
            text-transform: uppercase;
            color: #2a7da2;
            font-size: 16px;
            margin-left: 200px;
        }


        .interest ul {
            display: grid;
            grid-template-columns: repeat(4,1fr);
        }
        .interest ul li{
            list-style: none;
            color: #333;
            font-weight: 500;
            margin: 10px 0;
        }
        .interest ul li .fa
        {
            color:#03a9f4;
            font-size: 18px;
            width: 20px;
        }
        .btn1{
            height: 50px;
            width: 50px;
            background-color: green;
            margin-top: 400px;
            margin-left: 250px;
        }
        @media (max-width:1000px)
        {
            .container{
                margin: 10px;
                grid-template-columns:repeat(1,1fr);
            }
            .interest ul{
                grid-template-columns:repeat(2,1fr);
            }
        }

    </style>
</head>
<body>
<%--<h1>--%>
<%
    UserStudent1 u = (UserStudent1) request.getAttribute("user");
%>

<%--    <%=u.getFullname()%><br>--%>
<%--    <%=u.getProfession()%><br>--%>
<%--    <%=u.getLocation()%><br>--%>
<%--    <%=u.getEmail()%><br>--%>
<%--    <%=u.getContact()%>--%>
<%--    <%=u.getLanguage()%>--%>
<%--    <%=u.getProfile()%>--%>
<%--    <%=u.getExperience()%>--%>
<%--    <%=u.getCompanyname()%>--%>
<%--    <%=u.getExpyear()%>--%>
<%--    <%=u.getSkills()%>--%>
<%--    <%=u.getEducation()%>--%>
<%--    <%=u.getEdyear()%>--%>
<%--    <%=u.getEduname()%>--%>
<%--    <%=u.getInterest()%>--%>
<%--<%=u.getImage()%>%>--%>
<%--<%= u.getLanglevel()%>--%>
<%--<%=u.getSkillslevel()%>--%>
<%=u.getAwardname()%>
<%=u.getAwarddate()%>
<%=u.getCertificatename()%>
<%=u.getCertificatedate()%>
<%=u.getPosition()%>
<%--</h1>--%>
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


    </div>
    <div class="body1">
        <%--    //form--%>
        <div class="container">
            <div class="left_side">
                <div class="profileText">
<%--                    <div class="imgBx">--%>
<%--                        <img src="<%=u.getImage()%>%>">--%>
<%--                    </div>--%>
                    <h2><%=u.getFullname()%><br><br><span><%=u.getProfession()%><br></span></h2>
                </div>

                <div class="contactInfo">
                    <h3 class="title">Contact Info</h3>
                    <ul>
                        <li>
                            <span class="icon"><i class="fa fa-phone" aria-hidden="true"></i></span>
                            <span class="text"><%=u.getContact()%></span>
                        </li>
                        <li>
                            <span class="icon"><i class="fa fa-envelope-o" aria-hidden="true"></i></span>
                            <span class="text"><%=u.getEmail()%></span>
                        </li>
                        <li>
                            <%--                    <span class="icon"><i class="fa fa-globe" aria-hidden="true"></i></span>--%>
                            <%--                    <span class="text">www.mywebsite.com</span>--%>
                            <%--                </li>--%>
                            <%--                <li>--%>
                            <%--                    <span class="icon"><i class="fa fa-linkedin-square" aria-hidden="true"></i></span>--%>
                            <%--                    <span class="text">www.linkedin.com/me</span>--%>
                            <%--                </li>--%>
                        <li>
                            <span class="icon"><i class="fa fa-map-marker" aria-hidden="true"></i></span>
                            <span class="text"><%=u.getLocation()%></span>
                        </li>
                    </ul>
                </div>

                <div class="contactInfo_education">
                    <h3 class="title">Education</h3>
                    <ul>
                        <li>
                            <h5><%=u.getEdyear()%></h5>
                            <h4><%=u.getEducation()%></h4>
                            <h4><%=u.getEduname()%></h4>
                        </li>
                        <%--                <li>--%>
                        <%--                    <h5>2019-2021</h5>--%>
                        <%--                    <h4>+2 Degree</h4>--%>
                        <%--                    <h4>Beni Community Sec.Sch</h4>--%>
                        <%--                </li>--%>
                        <%--                <li>--%>
                        <%--                    <h5>2009-2019</h5>--%>
                        <%--                    <h4>SEE</h4>--%>
                        <%--                    <h4>Myagdi Academy</h4>--%>
                        <%--                </li>--%>
                    </ul>
                </div>
                <div class="contactInfo_language">
                    <h3 class="title">Language</h3>
                    <ul>
                        <li>
                            <span class="text"><%=u.getLanguage()%></span>
                            <span class="percent">
                                <div style="width: <%= u.getLanglevel()%>;"></div>
                            </span>
                        </li>
                        <%--                <li>--%>
                        <%--                    <span class="text">Nepali</span>--%>
                        <%--                    <span class="percent">--%>
                        <%--                                <div style="width: 95%;"></div>--%>
                        <%--                            </span>--%>
                        <%--                </li>--%>
                    </ul>
                </div>


            </div>

            <div class="right_side">
                <div class="about">
                    <h2 class="title2">Profile</h2>
                    <p> <%=u.getProfile()%></p>
                </div>
                <div class="about">
                    <h2 class="title2">Experience</h2>
                    <div class="box">
                        <div class="year_company">
                            <h5><%=u.getExpyear()%></h5>
                            <h5><%=u.getCompanyname()%></h5>
                        </div>
                        <div class="text1">
                            <h4><%=u.getPosition()%></h4>
                            <p> <%=u.getExperience()%></p>
                        </div>
                    </div>

                    <%--            <div class="box">--%>
                    <%--                <div class="year_company">--%>
                    <%--                    <h5>2014-2019</h5>--%>
                    <%--                    <h5>Company Name</h5>--%>
                    <%--                </div>--%>
                    <%--                <div class="text">--%>
                    <%--                    <h4>Junior Web Developer</h4>--%>
                    <%--                    <p>Hardworking College Student seeking employment. Bringing forth a motivated attitude and a variety of powerful skills. Adept in various social media platforms and office technology programs. Committed to utilizing my skills to further the mission of a company.</p>--%>
                    <%--                </div>--%>
                    <%--            </div>--%>
                </div>
                <div class="about skills">
                    <h2 class="title2">Professional Skills</h2>
                    <div class="box">
                        <h4><%=u.getSkills()%></h4>
                        <div class="percent">
                            <div style="width: <%=u.getSkillslevel()%>;"></div>
                        </div>

                    </div>
                </div>

                <div class="about">
                    <h2 class="title2">Awards</h2>
                    <div class="box">
                        <div class="year_company">
                            <h5><%=u.getAwarddate()%></h5>
                            <!-- <h5>Company Name</h5> -->
                        </div>
                        <div class="text">
                            <h4><%=u.getAwardname()%></h4>

                        </div>
                    </div>

                    <div class="about">
                        <h2 class="title2">Certificate</h2>
                        <div class="box">
                            <div class="year_company">
                                <h5><%=u.getCertificatedate()%></h5>
                                <!-- <h5>Company Name</h5> -->
                            </div>
                            <div class="text">
                                <h4><%=u.getCertificatename()%></h4>

                            </div>
                        </div>



                <div class="about interest">
                    <h2 class="title2">Hobby</h2>
                    <ul>
                        <li><i class="fa fa-book" aria-hidden="true"></i><%=u.getInterest()%></li>
                        <%--                <li><i class="fa fa-music" aria-hidden="true"></i> Music</li>--%>
                        <%--                <li><i class="fa fa-gamepad" aria-hidden="true"></i>Gaming</li>--%>
                        <%--                <li><i class="fa fa-cutlery" aria-hidden="true"></i>Cooking</li>--%>
                    </ul>
                </div>


                <button type="submit" class="btn1"><a href="customer?page=editCv&id=<%HttpSession s = request.getSession();%><%=s.getAttribute("uid")%>">Edit</a></button>


            </div>

        </div>


    </div>
</div>
</body>
</html>
