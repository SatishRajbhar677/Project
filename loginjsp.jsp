<%@page contentType="text/html" pageEncoding="UTF-8" session="true"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login JSP</title>
    </head>
    <body>
        <input type="hidden" name="token" value="${sessionScope.token}" />

        <%

            String uname = request.getParameter("txtName");
            String pass = request.getParameter("txtPass");

            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
                PreparedStatement stmt = con.prepareStatement("select * from registration_data where first_name=? and password=?");
                stmt.setString(1, uname);
                stmt.setString(2, pass);
                ResultSet rs = stmt.executeQuery();
                if (rs.next()) {
                    if (pass.equals(rs.getString("password"))) {
                        String name = rs.getString("first_name");
                        String passw = rs.getString("password");
                        Cookie ck = new Cookie("name", name);
                        response.addCookie(ck);
                        Cookie ck1 = new Cookie("passwrd", passw);
                        response.addCookie(ck1);

                        System.out.println(ck);
                        RequestDispatcher rd = request.getRequestDispatcher("index.html");
                        rd.forward(request, response);

                    }

                } else {
        %>
        <script>
            alert('user name and password is wrong');
        </script>
        <%
                    RequestDispatcher rd = request.getRequestDispatcher("loginpage.html");
                    rd.forward(request, response);

                }

            } catch (Exception e) {
                out.println(e);
            }
        %>
    </body>
</html>