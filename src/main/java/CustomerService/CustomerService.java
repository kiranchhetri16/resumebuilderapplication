package CustomerService;

import Model.UserStudent;
import Model.UserStudent1;
import User.DBConnection.DBConnection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CustomerService {

    public void insertUser(UserStudent student) {
        String query = "insert into cv(username, fullname, password)" + "values(?,?,?)"; // same as database

        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query

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

    public UserStudent getUser(String username, String password) {
        UserStudent student = null;

        String query = "select * from cv where username=? and password=?";
        PreparedStatement ps = new DBConnection().getStatement(query);

        try {
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                student = new UserStudent();

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
//forgot Password
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
//inserting into resume code
    public void insertDatabase(UserStudent1 student) {


        String query = "insert into finalresume (fullname,profession,address,edyear,eduname,email,contact,language,langlevel,profile,experience,companyname,expyear,position,skills,skillslevel,education,interest,awardname,awarddate,certificatename,certificatedate)" + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        PreparedStatement preparedStatements = new DBConnection().getStatement(query);  // execute parametrized query
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
//            preparedStatements.setString(23,student.getFile());
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
    public UserStudent1 getCv(int id ){
        UserStudent1 student=null;
        String query="select * from finalresume where id=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            int i=1;
            while (rs.next()) {
                student = new UserStudent1();
                student.setId(i);
                student.setFullname(rs.getString("fullname"));
                student.setProfession(rs.getString("profession"));
                student.setLocation(rs.getString("address"));
                student.setEmail(rs.getString("email"));
                student.setContact(rs.getString("contact"));
                student.setLanguage(rs.getString("language"));
                student.setLanglevel(rs.getString("langlevel"));
                student.setProfile(rs.getString("profile"));
                student.setExperience(rs.getString("experience"));
                student.setCompanyname(rs.getString("companyname"));
                student.setExpyear(rs.getString("expyear"));
                student.setPosition(rs.getString("position"));
                student.setSkills(rs.getString("skills"));
                student.setSkillslevel(rs.getString("skillslevel"));
                student.setEducation(rs.getString("education"));
                student.setEdyear(rs.getString("edyear"));
                student.setEduname(rs.getString("eduname"));
                student.setInterest(rs.getString("interest"));
                student.setAwardname(rs.getString("awardname"));
                student.setAwarddate(rs.getString("awarddate"));
                student.setCertificatename(rs.getString("certificatename"));
                student.setCertificatedate(rs.getString("certificatedate"));
//                student.setFile(rs.getString("file"));
//                student.setImage((rs.getString("image")));
                i++;
            }
        }
        catch (SQLException e) {
            throw new RuntimeException(e);
        }
        return student;

    }

    public void editCv(int id, UserStudent1 student){
//    UserStudent1 student=null;
        String query="UPDATE `finalresume` SET `fullname`='?',`profession`='?',`contact`='?',`email`='?',`address`='?',`edyear`='?',`eduname`='?',`education`='?',`language`='?',`langlevel`='?',`profile`='?',`expyear`='?',`companyname`='?',`position`='?',`experience`='?',`skills`='?',`skillslevel`='?',`certificatename`='?',`certificatedate`='?',`awardname`='?',`awarddate`='?',`interest`='?' WHERE id=?";
        PreparedStatement ps = new DBConnection().getStatement(query);
        try {
//            ps.setInt(1, id);

//        ResultSet rs = ps.executeUpdate();

//        while (rs.next())

//            student  = new UserStudent1();

            ps.setInt(1,student.getId());
            ps.setString(2,student.getFullname());

            ps.setString(3,student.getProfession());
            ps.setString(4,student.getContact());
            ps.setString(5,student.getEmail());
            ps.setString(6,student.getLocation());
//            ps.setString(5,student.getEmail());
//            ps.setString(6,student.getContact());
            ps.setString(7,student.getEdyear());
            ps.setString(8,student.getEduname());
            ps.setString(9,student.getEducation());
            ps.setString(10,student.getLanguage());
            ps.setString(11,student.getLanglevel());
            ps.setString(12,student.getProfile());
            ps.setString(13,student.getExpyear());
            ps.setString(14,student.getCompanyname());
            ps.setString(15,student.getPosition());
            ps.setString(16,student.getExperience());
//            ps.setString(10,student.getCompanyname());
//            ps.setString(11,student.getExpyear());
            ps.setString(17,student.getSkills());
            ps.setString(18,student.getSkillslevel());
            ps.setString(19,student.getCertificatename());
            ps.setString(20,student.getCertificatedate());
            ps.setString(21,student.getAwardname());
            ps.setString(22,student.getAwarddate());
//            ps.setString(13,student.getEducation());
//            ps.setString(14,student.getEdyear());
//            ps.setString(15,student.getEduname());
            ps.setString(23,student.getInterest());

            ps.executeUpdate();
//
        }
        catch (SQLException e){
            e.printStackTrace();
        }


    }

    //Search
    public static List<UserStudent> Actionsearch(String query) {
        List<UserStudent> subsearch = new ArrayList< >();
        String sql = "SELECT * FROM cv WHERE fullname LIKE ?";
        try (PreparedStatement ps = new DBConnection().getStatement(sql);) {
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
