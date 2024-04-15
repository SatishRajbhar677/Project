<%@page contentType="text/html" pageEncoding="UTF-8" session="true" %>
<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Quotation JSP</title>
</head>
<body>
<%
    String uname = request.getParameter("Username");
    String email = request.getParameter("Email");
    String phone = request.getParameter("Phone_no");
    String address = request.getParameter("Address");
    String pdetails = request.getParameter("Project_details");
    String pbudget = request.getParameter("Estimated_budget");
    int id=0;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
        PreparedStatement pstm = con.prepareStatement("insert into quotation1 ( QuotationID,Username,Email,PhoneNumber,Address,Project_Detail,Estimated_Budget) values (?,?,?,?,?,?,?)");
        pstm.setInt(1, id);
        pstm.setString(2, uname);
        pstm.setString(3, email);
        pstm.setString(4, phone);
        pstm.setString(5, address);
        pstm.setString(6, pdetails);
        pstm.setString(7, pbudget);
        int row = pstm.executeUpdate();
        
        if (session.getId().length() != 0) {
            if (row == 1) {
                // JavaScript code to display alert when details are successfully filled
%>
                <script>
                    alert('Details Filled Successfully');
                    window.location.href = "Quote.jsp";
                </script>
<%
            } else {
                // Redirect to login page and display message if details couldn't be filled
                response.sendRedirect("quotpage.html");
%>
                <script>
                    alert('Failed to fill details. Please re-enter your details.');
                    window.location.href = "quotpage.html";
                </script>
<%
            }
        }

    } catch (Exception e) {
        out.println(e);
    }
%>
</body>
</html>
