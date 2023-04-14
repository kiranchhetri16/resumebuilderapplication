        <%@ page import="Model.UserStudent1" %>
<%@ page import="java.io.PrintWriter" %><%--
  Created by IntelliJ IDEA.
  User: Kiran Chhetri
  Date: 4/3/2023
  Time: 9:14 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
        <!DOCTYPE html>
        <html lang="en">
        <head>
          <meta charset="UTF-8">
          <meta http-equiv="X-UA-Compatible" content="IE=edge">
          <meta name="viewport" content="width=device-width, initial-scale=1.0">
          <title>Document</title>
          <style>
            *{
              margin: 0;
              padding: 0;
              font-family: sans-serif;
            }
            .container{
              border: solid black 1px;
              height: 100%;
              background-color: #fff;
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

            .prof1, .prof2, .prof3, .prof4, .prof5, .prof6, .prof7, .prof8, .prof9, .prof10, .profile1, .profile2, .profile3, .profile4,.profile5, .skill1, .skill2, .certificate1, .certificate2, .award1, .award2, .bobby1 {
              width: 100%;
            }


          </style>
        </head>
<body>
<%--<h1>Here you can edit your cv</h1>--%>
<%--<%PrintWriter s = response.getWriter();%>--%>
<% UserStudent1 u  = (UserStudent1) request.getAttribute("editUser");
%>

<div class="container">
  <form action="../customer?page=cvresult" method="post">
    <input type="text" class="prof1" name="fullname" value="<%=u.getFullname()%>" >
    <input type="text" class="prof2" name="profession" value="<%=u.getProfession()%>" >
    <div class="contact">
      <h3>Contact Information</h3>
      <input type="number" class="prof3" name="contact" value="<%=u.getContact()%>" >
      <input type="email" class="prof4" name="email" value="<%=u.getEmail()%>" >
      <input type="text" class="prof5" name="address" value="<%=u.getLocation()%>" r>
    </div>
    <div class="education">
      <h3>Education</h3>
      <input type="year" class="prof6" name="edyear" <%=u.getEdyear()%> >
      <input type="text" class="prof7" name="eduname" value="<%=u.getEduname()%>"  >
      <input type="text" class="prof8" name="education" value="<%=u.getEducation()%>" >
    </div>
    <div class="language">
      <h3>Language</h3>
      <input type="text" class="prof9" name="language" value="<%=u.getLanguage()%>" >
      <input type="number" class="prof10" name="langlevel" value="<%=u.getLanglevel()%>">
    </div>
    <div class="profile">
      <h3>Profile</h3>
      <textarea name="profile" class="profile1" ><%=u.getProfile()%></textarea>
    </div>
    <div class="experience">
      <h3>Experience</h3>
      <input type="year" class="profile2" name="expyear" value="<%=u.getExpyear()%>">
      <input type="text" class="profile3" name="companyname" value="<%=u.getCompanyname()%>">
      <input type="text" class="profile5" name="position" value="<%=u.getPosition()%>" >
      <textarea class="profile4" name="experience" ><%=u.getExperience()%></textarea>
    </div>
    <div class="skill">
      <h3>Professional Skills</h3>
      <input type="text" class="skill1" name="skills" value="<%=u.getSkills()%>">
      <input type="number" class="skill2" name="skillslevel" value="<%=u.getSkillslevel()%>">
    </div>
    <div class="certificate">
      <h3>Certificate</h3>
      <input type="text"  class="certificate1" name="certifcatename" value="<%=u.getCertificatename()%>">
      <input type="date" class="certificate2" name="certificatedate" value="<%=u.getCertificatedate()%>">
    </div>
    <div class="award">
      <h3>Awards</h3>
      <input type="text" class="award1" name="awardname" value="<%=u.getAwardname()%>">
      <input type="date" class="award2" name="awarddate" value="<%=u.getAwarddate()%>">
    </div>
    <div class="hobby">
      <h3>Hobbies</h3>
      <textarea  class="bobby1" name="interest" ><%=u.getInterest()%></textarea>
    </div>
    <input type="submit" a href="resumeoutput.jsp" Save ><a/>
  </form>
</div>
</body>
</html>