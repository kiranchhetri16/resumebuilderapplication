package Service;

import DBConnection.DBConnection;
import Model.Student;
import Model.UserStudent;
import Model.UserStudent1;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserService {

    public void insertUser(Student student) {
        String query = "insert into user(username, fullname, password)" + "values(?,?,?)"; // same as database

        PreparedStatement preparedStatements = new User.DBConnection.DBConnection().getStatement(query);  // execute parametrized query

        try {
            preparedStatements.setString(1, student.getUserName());
            preparedStatements.setString(2, student.getFullName());
            preparedStatements.setString(3, student.getPassword());

            preparedStatements.execute();

        } catch (
                SQLException e) {
            e.printStackTrace();
        }
    }

    public Student getUser(String username, String password) {
        Student student = null;

        String query = "select * from user where username=? and password=?";
        PreparedStatement ps = new User.DBConnection.DBConnection().getStatement(query);

        try {
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                student = new Student();

                student.setId(rs.getInt("id"));
                student.setUserName(rs.getString("username"));

                student.setFullName(rs.getString("fullname"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }


    //    This is related to list user page
    public List<UserStudent> getUserList() {
        List<UserStudent> userList = new ArrayList<>();
        String query = "select * from cv";
        System.out.println(query);
        PreparedStatement pstm = new DBConnection().getStatement(query);
        try {
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                UserStudent student = new UserStudent();

                student.setId(rs.getInt("id"));
                student.setFullname(rs.getString("fullname"));
                student.setUserName(rs.getString("username"));
                student.setPassword(rs.getString("password"));


                userList.add(student);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return userList;
    }

    //    For getting user details in user list
    public UserStudent getUserRow(int id) {
        UserStudent student = new UserStudent();
        String query = "select * from cv where id = ?";
        PreparedStatement pstm = new DBConnection().getStatement(query);

        try {
            pstm.setInt(1, id);
            ResultSet rs = pstm.executeQuery();
            while (rs.next()) {
                student.setId(rs.getInt("id"));
                student.setFullname(rs.getString("fullname"));
                student.setUserName(rs.getString("username"));
                student.setPassword(rs.getString("password"));
            }
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }

    // Delete User
    public void deleteUser(int id) {
        String query = "delete from cv where id = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setInt(1, id);
            ps.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    //    For editing users
    public UserStudent editUser(int id, UserStudent student) throws SQLException {

        String query = "UPDATE `cv` SET `username`=?,`fullname`=?,`password`=? WHERE id=?";

        try (PreparedStatement pstm = new DBConnection().getStatement(query)) {
            pstm.setString(1, student.getFullname());
            pstm.setString(2, student.getUserName());
            pstm.setString(3, student.getPassword());
            pstm.setInt(4, student.getId());
            pstm.executeUpdate();
            System.out.println(pstm);
        }

        return student;
    }

    public UserStudent changePassword(UserStudent student, String username) {
        String query = "UPDATE cv SET password = ? WHERE username = ?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setString(2, username);
            ps.setString(1, student.getNewpassword());
            ps.executeUpdate();
            System.out.println(ps);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;
    }

    // adding resume
    public void insertDatabase(UserStudent1 student) {


        String query = "insert into finalresume (fullname,profession,address,edyear,eduname,email,contact,language,langlevel,profile,experience,companyname,expyear,position,skills,skillslevel,education,interest,awardname,awarddate,certificatename,certificatedate)" + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatements = new User.DBConnection.DBConnection().getStatement(query);  // execute parametrized query
        try {
//
            preparedStatements.setString(1, student.getFullname());
            preparedStatements.setString(2, student.getProfession());
            preparedStatements.setString(3, student.getLocation());
            preparedStatements.setString(4, student.getEmail());
            preparedStatements.setString(5, student.getContact());
            preparedStatements.setString(6, student.getLanguage());
            preparedStatements.setString(7,student.getLanglevel());
            preparedStatements.setString(8, student.getProfile());
            preparedStatements.setString(9, student.getExperience());
            preparedStatements.setString(10, student.getCompanyname());
            preparedStatements.setString(11,student.getExpyear());
            preparedStatements.setString(12,student.getPosition());
            preparedStatements.setString(13, student.getSkills());
            preparedStatements.setString(14,student.getSkillslevel());
            preparedStatements.setString(15, student.getEducation());
            preparedStatements.setString(16,student.getEdyear());
            preparedStatements.setString(17,student.getEduname());
            preparedStatements.setString(18, student.getInterest());
            preparedStatements.setString(19,student.getAwardname());
            preparedStatements.setString(20,student.getAwarddate());
            preparedStatements.setString(21,student.getCertificatename());
            preparedStatements.setString(22,student.getCertificatedate());
//            preparedStatements.setString(16,student.getImage());

            preparedStatements.execute();


//            ResultSet rs = preparedStatements.executeQuery();
//            while (rs.next()) {
//                student = new UserStudent();
//                student.setFullName("fullname");
//                student.setProfession("profession");
//                student.setLocation("address");
//                student.setEmail("email");
//                student.setContact("contact");
//                student.setLanguage("language");
//                student.setProfile("profile");
//                student.setExperience("experience");
//                student.setSkills("skills");
//                student.setEducation("education");
//                student.setInterest("interest");
//
//            }

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    // Search
    public static List<UserStudent> Actionsearch(String query) {
        List<UserStudent> subsearch = new ArrayList< >();
        String sql = "SELECT * FROM cv WHERE fullname LIKE ?";
        try (PreparedStatement ps = new User.DBConnection.DBConnection().getStatement(sql);) {
            ps.setString(1, "%" + query + "%");
            try (ResultSet rs = ps.executeQuery()) {
                while (rs.next()) {
                    System.out.println(ps);
                    UserStudent student = new UserStudent();
                    student.setId(rs.getInt("sid"));
                    student.setFullname(rs.getString("fullname"));
//                    student.setSubsEmail(rs.getString("subsemail"));
                    subsearch.add(student);
                }
            }
        } catch (SQLException ex) {
            System.out.println(ex);
        }
        return subsearch;
    }
}