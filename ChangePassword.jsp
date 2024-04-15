

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
    <%
    String email = request.getParameter("txtEmail");
        
        try{
           Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
                PreparedStatement stmt = con.prepareStatement("select * from registration_data where email=?");
                stmt.setString(1, email);
                
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    if (email.equals(rs.getString("email"))) {
                       
                        RequestDispatcher rd = request.getRequestDispatcher("login.html");
                        rd.forward(request, response);
 
                        } else {
        
        
                        out.println("No Match Found");
                    //RequestDispatcher rd = request.getRequestDispatcher("login.html");
                    //rd.forward(request, response);

                }

                }
        } catch (Exception e) {
                out.println(e);
            }
        %>
</html>
