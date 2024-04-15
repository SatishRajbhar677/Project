<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>User Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin:0;
            padding:0;
            background-color: #f2f2f2;
        }
        .card {
            box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            width: 50%;
            margin: 50% auto;
            background-color: #ffffff;
            border-radius: 10px;
        }
        
        .container {
            padding: 20px;
        }
        table {
            width: 100%;
            border-collapse: collapse;
        }
        th, td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
        
    </style>
</head>
<body>
    <div class="cards">
        <div class="container">
<%
    Connection con = null;
    PreparedStatement pst = null;
    ResultSet rs = null;

    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project", "root", "root");
        pst = con.prepareStatement("SELECT * FROM quotation1");

        rs = pst.executeQuery();

        out.println("<table>");
        out.println("<caption><h1>Quotation Request</h1></caption>");
        ResultSetMetaData rsmd = rs.getMetaData();
        int totalColumns = rsmd.getColumnCount();

        out.println("<tr>");
        for (int i = 1; i <= totalColumns; i++) {
            out.println("<th>" + rsmd.getColumnName(i) + "</th>");
        }
        out.println("</tr>");

        while (rs.next()) {
            out.print("<tr>");
            for (int i = 1; i <= totalColumns; i++) {
                out.println("<td>" + rs.getString(i) + "</td>");
            }
            out.println("</tr>");
        }
        out.println("</table>");

    } 
    catch (ClassNotFoundException | SQLException e) {

        out.println("Error: " + e.getMessage());
        e.printStackTrace();
    } 
    finally {
        try {
            if (rs != null) rs.close();
            if (pst != null) pst.close();
            if (con != null) con.close();
        } catch (SQLException e) {
            out.println("Error closing database resources: " + e.getMessage());
            e.printStackTrace();
        }
    }
%>
        </div>
    </div>
</body>
</html>
