
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
        <%
            String Password =request.getParameter("txtPass");
            int id = String.valueOf((request.getParameter("id"));
            try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
                PreparedStatement stmt = con.prepareStatement("update registration_data password=? where id=?");
                stmt.setString(1, Password);
                stmt.setInt(2,id);
                ResultSet rs = stmt.executeQuery();
            }
                catch (Exception e) {
                out.println(e);
            }
            %>
    </body>
</html>
