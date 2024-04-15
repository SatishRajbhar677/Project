<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Registration JSP</title>
 </head>
 <body>
 <h1>Registration JSP Page</h1>
 <%
 String uname = request.getParameter("firstName");
 String lname = request.getParameter("lastName");
 String phone = request.getParameter("phone");
 String email = request.getParameter("email");
 String pass1 = request.getParameter("password");
 String pass2 = request.getParameter("rpassword");
 if (pass1.equals(pass2)) {
 try {
 Class.forName("com.mysql.jdbc.Driver");
 Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
 PreparedStatement pstm = con.prepareStatement("insert into registration_data (first_name,last_name,phone_no,email,password) values (?,?,?,?,?)");
 pstm.setString(1, uname);
 pstm.setString(2, lname);
 pstm.setString(3, phone);
 pstm.setString(4, email);
 pstm.setString(5, pass1);
 int row = pstm.executeUpdate();
 if (row == 1) {
 out.println("Registration Successful");
 %>
 <br> <a href="loginpage.html"> Click to Login</a>
 <%
 } else {
 out.println("Registration Failed !!!!"); %>
 <jsp:include page="Registration.html" ></jsp:include>
 <%
 }
 } catch (Exception e) {
 out.println(e);
 }
 } else {
 out.println("<h1>Password Mismatch</h1>");
 %>
 <jsp:include page="Registration.html" ></jsp:include>
 <%
 }%>
 </body>
</html>