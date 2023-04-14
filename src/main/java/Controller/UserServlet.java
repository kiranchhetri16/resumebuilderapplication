package Controller;


import Hashing.HashPassword;
import Model.Student;
import Model.UserStudent;
import CustomerService.CustomerService;
import Model.UserStudent1;
import Service.UserService;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

@WebServlet(name = "UserServlet", value = "/customer")
public class UserServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        PrintWriter out = response.getWriter();

        String action = request.getParameter("page");
        System.out.println("Page: " + action);
        if (action.equalsIgnoreCase("login")) {

            String username = request.getParameter("username");

            String password = HashPassword.hashPassword(request.getParameter("password"));
            System.out.printf(username + " " + password + "");

            UserStudent student = new CustomerService().getUser(username, password);

            if (student != null) {
                HttpSession session = request.getSession();
                session.setAttribute("uid", student.getId());
                session.setAttribute("username", student.getUserName());
                session.setAttribute("fullname", student.getFullName());

                session.setAttribute("password", student.getPassword());

                int id = student.getId();
                System.out.println("id is:"+ id);
                request.setAttribute("msg", "Login Successful!");
                request.setAttribute("id", student.getId());
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("userlogin.jsp");
                rd.forward(request, response);
            }

        }
//        To redirect in Register Page
        if (action.equalsIgnoreCase("newUsers")) {
            RequestDispatcher rd = request.getRequestDispatcher("UserPannel/register.jsp"); // this code is not working
            rd.forward(request, response);
        }

        //        To register a new account
        if (action.equalsIgnoreCase("register"))

        {

            UserStudent student = new UserStudent();

            student.setUserName(request.getParameter("username"));
            student.setFullName(request.getParameter("fullname"));
            student.setPassword(HashPassword.hashPassword(request.getParameter("password")));

            new CustomerService().insertUser(student);

            System.out.printf("Data Inserted");

            RequestDispatcher rd = request.getRequestDispatcher("userlogin.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }

        //inserting into cv
        if(action.equalsIgnoreCase("cvresult")){

//            Part filePart = request.getPart("file");
//            String fileName = filePart.getSubmittedFileName();
//            String uploadPath = "C:\\Users\\Kiran Chhetri\\IdeaProjects\\Resumebuilderfinalproject\\src\\main\\webapp\\images";
//            String imgPath = "image\\pics";
//            String filePathName = uploadPath + fileName;
//            imgPath = imgPath + fileName;
//            for (Part part : request.getParts()) {
//                part.write(filePathName);
//            }


            UserStudent1 student = new UserStudent1();

//                    student.setImage(request.getParameter("image"));

            student.setFullname(request.getParameter("fullname"));
            student.setProfession(request.getParameter("profession"));
            student.setContact(request.getParameter("contact"));
//            student.setContact(request.getParameter("contact"));
            student.setEmail(request.getParameter("email"));
            student.setLocation(request.getParameter("address"));
            student.setEdyear(request.getParameter("edyear"));
            student.setEduname(request.getParameter("eduname"));
            student.setEducation(request.getParameter("education"));
            student.setLanguage(request.getParameter("language"));
            student.setLanglevel(request.getParameter("langlevel"));
            student.setProfile(request.getParameter("profile"));
            student.setExperience(request.getParameter("experience"));
            student.setCompanyname(request.getParameter("companyname"));
            student.setExpyear(request.getParameter("expyear"));
            student.setPosition(request.getParameter("position"));
            student.setSkills(request.getParameter("skills"));
            student.setSkillslevel(request.getParameter("skillslevel"));
            student.setInterest(request.getParameter("interest"));
            student.setAwardname(request.getParameter("awardname"));
            student.setAwarddate(request.getParameter("awarddate"));
            student.setCertificatename(request.getParameter("certificatename"));
            student.setCertificatedate(request.getParameter("certificatedate"));
//                   student.setImage(filePathName);

            new CustomerService().insertDatabase(student);
            request.setAttribute("user" , student);
            System.out.println("Data inserted");
//            System.out.println(fileName +filePathName +filePart);


            System.out.println(request.getParameter("fullname")+request.getParameter("profession")+request.getParameter("contact")+request.getParameter("email")+request.getParameter("address")+request.getParameter("education")+request.getParameter("language")+request.getParameter("langlevel")+request.getParameter("profile")+request.getParameter("experience")+request.getParameter("skills")+request.getParameter("skillslevel")+request.getParameter("interest")+request.getParameter("awardname")+request.getParameter("awarddate")+request.getParameter("certificatename")+request.getParameter("certificatedate")+request.getParameter("position"));
//            request.setAttribute("user" , student);
            request.getRequestDispatcher("UserPannel/resumeoutput.jsp").forward(request,response);
//            RequestDispatcher rd = request.getRequestDispatcher("UserPannel/resumeoutput.jsp");
//            try {
//                rd.forward(request, response);
//            } catch (ServletException e) {
//                throw new RuntimeException(e);
//            }


        }
        // retiving data



        if(action.equalsIgnoreCase("cvresult")){
            int id = Integer.parseInt(request.getParameter("id"));
            CustomerService cs = new CustomerService();
            UserStudent1 st = cs.getCv(id);
            request.setAttribute("user" , st);
            request.getRequestDispatcher("UserPannel/resumeoutput.jsp").forward(request,response);

        }
        //editing data
        if(action.equalsIgnoreCase("editCv")){
            System.out.println("cvresult page");
            int id= Integer.parseInt(request.getParameter("id"));
            UserStudent1 student = new CustomerService().getCv(id);
//            CustomerService cs=new CustomerService();
            request.setAttribute("id",id);
//            UserStudent1 st=cs.editCv(id);
            request.setAttribute("editUser",student);
            request.getRequestDispatcher("UserPannel/editcv.jsp").forward(request,response);
        }

        //change password
        if (action.equalsIgnoreCase("changingpassword")) {
            UserStudent student = new UserStudent();
            HttpSession session = request.getSession();
            String username = (String) session.getAttribute("username");
            student.setPassword(HashPassword.hashPassword(request.getParameter("oldpassword")));
            student.setNewpassword(HashPassword.hashPassword(request.getParameter("newpassword")));
            new CustomerService().changePassword(student, username);
            RequestDispatcher rd = request.getRequestDispatcher("userlogin.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }

        }
        System.out.println("password is changing"+HashPassword.hashPassword(request.getParameter("oldpassword")));
        System.out.println("new password is"+HashPassword.hashPassword(request.getParameter("newpassword")));
        //search
//        if (action.equalsIgnoreCase("search")) {
//            String query = request.getParameter("query");
//            List<UserStudent> actionsearch = CustomerService.Actionsearch(query);
//            request.setAttribute("actionsearch", actionsearch);
//            request.setAttribute("query", query);
//            RequestDispatcher dispatcher = request.getRequestDispatcher("UserPannel/searchresults.jsp");
//            dispatcher.forward(request, response);
//        }


    }

}




