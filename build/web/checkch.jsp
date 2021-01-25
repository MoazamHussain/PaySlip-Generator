<%-- 
    Document   : checkch
    Created on : Mar 8, 2020, 8:56:33 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
             <title>JSP Page</title>
        <link rel="stylesheet" href="sh_style1.css">
    <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" type="text/css" href=" https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    </head>
    <body>
         <%
             String id=request.getParameter("id");
           String uname=request.getParameter("uname");
           String pass=request.getParameter("pass");
           String tempu="",tempp="";
           int i=Integer.parseInt(id);
            
            try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    Statement statement = con.createStatement();
    String sql = "SELECT username,password FROM emp where emp_id="+i+"";

ResultSet rss= statement.executeQuery(sql);
while (rss.next()) {
    tempu=rss.getString("username");
    tempp=rss.getString("password");
}

    
  PreparedStatement stmt=con.prepareStatement("update emp set username = ?,password=? where emp_id = ? ");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  stmt.setInt(3, i);
 
  stmt.executeUpdate();
  
  PreparedStatement stmt1=con.prepareStatement("update login set username = ?,password=? where username = ? and password=? ");  
  stmt1.setString(1, uname);
  stmt1.setString(2, pass);
  stmt1.setString(3, tempu);
  stmt1.setString(4, tempp);
 
  stmt1.executeUpdate();
  response.sendRedirect("updateds.jsp");

}
            catch(Exception e)
            {
                e.printStackTrace();
                response.sendRedirect("invalidcre.jsp");
            }
 
    %>
        
    </body>
</html>
