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
            String email = (String) request.getParameter("email");
            String password = request.getParameter("pass1");
            
            String alertMessage = ""; 
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
                PreparedStatement pstm = con.prepareStatement("UPDATE Registration_data SET password=? WHERE email=?");
                
                pstm.setString(1, password);
                pstm.setString(2, email);
                int rowsAffected = pstm.executeUpdate();
                
                if (rowsAffected > 0) {
                    alertMessage = "Password updated successfully"; 
                } else {
                    alertMessage = "Failed to update password"; 
                }
            } catch (Exception e) {
                out.println(e);
            }
        %>
        
        <script type="text/javascript">
            var message = "<%= alertMessage %>";
            if (message !== "") {
                alert(message);
                if (message === "Password updated successfully") {
                    window.location.href = "loginpage.html";
                }
            }
        </script>
    </body>
</html>
