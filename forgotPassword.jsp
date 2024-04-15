

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Forgot Password</title>
    </head>
    <body>

    
    </body>
</html>
<%
        String email = request.getParameter("txtEmail");

        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
            PreparedStatement stmt = con.prepareStatement("select * from registration_data where email=?");
            stmt.setString(1, email);

            ResultSet rs = stmt.executeQuery();
            if (rs.next()) {
                if (email.equals(rs.getString("email"))) {
                    request.setAttribute("Gemail",email);
                    

                    RequestDispatcher rd = request.getRequestDispatcher("SetPassword.jsp");
                    rd.forward(request, response);

                } else {

                    out.println("No Match Found");

                }

            } else {
                RequestDispatcher rd = request.getRequestDispatcher("errorpage.jsp");
                rd.include(request, response);
            }
        } catch (Exception e) {
            out.println(e);
        }
    %>
