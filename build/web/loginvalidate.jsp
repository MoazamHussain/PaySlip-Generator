<%-- 
    Document   : loginvalidate
    Created on : Feb 17, 2020, 9:46:21 PM
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
    </head>
    <body>
       <%   
            String uname=request.getParameter("username");
            String pass=request.getParameter("password");
            String type=request.getParameter("User Type");
            session.setAttribute("user", uname);
            session.setAttribute("pass", pass);
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("select username,password,type from login where username=? and password=? and type=?");  
  stmt.setString(1, uname);
  stmt.setString(2, pass);
  stmt.setString(3, type);
  ResultSet rs=stmt.executeQuery();  
if(rs.next()) 
{
if (type.equals("Admin")) {
            response.sendRedirect("admin.jsp");
        } 

else {
                          
try {
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 

     int id;
    
Statement statement1 = null;
ResultSet resultSet1 = null;

statement1 = con1.createStatement();
String sql1 = "SELECT emp_id FROM emp where username="+uname+" and password="+pass+"";

String n1,n2;

resultSet1=statement1.executeQuery(sql1);

while (resultSet1.next()) {
    
id=Integer.parseInt(resultSet1.getString("emp_id"));


session.setAttribute("myempid",id);
 
}
}

catch(Exception e)
{
    e.printStackTrace();
}


            response.sendRedirect("employee.jsp");
        }  
con.close();  
}

else
{
    response.sendRedirect("login.jsp");
    con.close();
}

  }
  catch(Exception e){ e.printStackTrace();}  

  
%>

        <h1>Validating details!</h1>
        
    </body>
</html>
