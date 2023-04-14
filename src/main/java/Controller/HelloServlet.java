package Controller;

import java.io.*;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import CustomerService.CustomerService;
import DBConnection.DBConnection;
import Hashing.HashPassword;
import Model.Student;
import Model.UserStudent;
import Model.UserStudent1;
import Service.UserService;
import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", urlPatterns = "/user")
public class HelloServlet extends HttpServlet {
    private String message;

    public void init() {
//        message = "Hello World!";
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");
        doPost(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        response.setContentType("text/html");

        // Hello
        PrintWriter out = response.getWriter();

        String action = request.getParameter("page");
        System.out.println("Page: " + action);
        if (action.equalsIgnoreCase("login")) {

            String username = request.getParameter("username");

            String password = request.getParameter("password");
            System.out.printf(username + " " + password + "");

            UserStudent student = new CustomerService().getUser(username, password);

            if (("username" == "admin") && ("password"=="admin")) {
//                HttpSession session = request.getSession();
//                session.setAttribute("uid", student.getId());
//                session.setAttribute("username", student.getUserName());
//                session.setAttribute("fullname", student.getFullName());
//                session.setAttribute("password", student.getPassword());


                request.setAttribute("msg", "Login Successful!");
                System.out.println(request.getAttribute("msg"));

                RequestDispatcher rd = request.getRequestDispatcher("Pages/dashboard.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("msg", "Invalid username or password");
                RequestDispatcher rd = request.getRequestDispatcher("Pages/dashboard.jsp");
                rd.forward(request, response);
            }

        }
//        To redirect in Register Page
        if (action.equalsIgnoreCase("newUsers")) {
            RequestDispatcher rd = request.getRequestDispatcher("Pages/register.jsp"); // this code is not working
            rd.forward(request, response);
        }

        //        To register a new account
        if (action.equalsIgnoreCase("register"))

        {

            UserStudent student = new UserStudent();

            student.setUserName(request.getParameter("username"));
            student.setFullName(request.getParameter("fullname"));
            student.setPassword(request.getParameter("password"));

            new CustomerService().insertUser(student);

            System.out.printf("Data Inserted");

            RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
            try {
                rd.forward(request, response);
            } catch (ServletException e) {
                throw new RuntimeException(e);
            }
        }

//        Show the user list in list user page
        if (action.equalsIgnoreCase("listuser") ){

            Student student = new Student();
            List<UserStudent> studentList = new UserService().getUserList();

            request.setAttribute("student", student);
            request.setAttribute("studentlist", studentList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);


        }

//        to show user details
        if (action.equalsIgnoreCase("userDetails"))
        {
            int id = Integer.parseInt(request.getParameter("id"));
            UserStudent student = new UserService().getUserRow(id);
            request.setAttribute("id", id);
            request.setAttribute("userDetails", student);  //Why this

            RequestDispatcher rd = request.getRequestDispatcher("Pages/user_details.jsp");
            rd.forward(request, response);
        }

        // for deleting users in user_details page
        if (action.equalsIgnoreCase("deleteUser"))

        {
            int id = Integer.parseInt(request.getParameter("id"));
            UserService userService = new UserService();
            userService.deleteUser(id);
            List<UserStudent> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            RequestDispatcher rd = request.getRequestDispatcher("Pages/listuser.jsp");
            rd.forward(request, response);
        }

        // to show the editing options in webpage
        if (action.equalsIgnoreCase("editUser"))

        {

            int id = Integer.parseInt(request.getParameter("id"));
            UserStudent student = new UserService().getUserRow(id);
            List<UserStudent> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            request.setAttribute("id", id);
            request.setAttribute("userDetails", student);  //Why this
//            out.print("student "+student.getFullname());
//            out.print("student "+student.getUserName());
//            out.print("student "+student.getPassword());
            RequestDispatcher rd = request.getRequestDispatcher("Pages/upate_user.jsp");
            rd.forward(request, response);
        }

        // for sh
        if (action.equalsIgnoreCase("userEdit"))

        {
            System.out.println("hello inside the edit user");
            int id = Integer.parseInt(request.getParameter("id"));
            UserStudent student = new UserStudent(); // create a new UserStudent object
            try {
                student = new UserService().editUser(id, student); // pass the student object to editUser method
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }

            request.setAttribute("id", id);
            List<UserStudent> userList = new UserService().getUserList();
            request.setAttribute("userList", userList);
            request.setAttribute("userDetails", student);  //Why this
            RequestDispatcher rd = request.getRequestDispatcher("Pages/dashboard.jsp");
            rd.forward(request, response);
        }






        if(action.equalsIgnoreCase("logout")){
            HttpSession session = request.getSession(false);
            session.invalidate();

            RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
            requestDispatcher.forward(request, response);
        }

        //Adding resume



        }




    public void destroy() {
    }
}