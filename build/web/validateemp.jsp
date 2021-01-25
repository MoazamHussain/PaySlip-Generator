<%-- 
    Document   : validateemp
    Created on : Feb 21, 2020, 10:45:07 PM
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
        <link rel="stylesheet" href="sh_style1.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href=" https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
        
    </head>
    <style type="text/css">
  body{
 background-image: url("valided.jpg");
 background-repeat: no-repeat;
      background-size: 100% 170%;

  }
</style>
    <body>
        <%!
int last_id;
%>

        <%   
            String fname=request.getParameter("fname");
            String lname=request.getParameter("lname");
            String gender=request.getParameter("gender");
            String dob=request.getParameter("dob");
            String status=request.getParameter("status");
            String health=request.getParameter("membershipRadios");
            String addr=request.getParameter("address");
            String state=request.getParameter("state");
            String phno=request.getParameter("phno");
            String pcode=request.getParameter("pcode");
            String city=request.getParameter("city");
            String country=request.getParameter("country");
            String d=request.getParameter("desg");
            String r=request.getParameter("rate");
            
            int rate=Integer.parseInt(r);
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    
    Statement stmt=con.createStatement();  
    Statement stmt1=con.createStatement();
    
  String sql=("INSERT INTO emp(firstname,lastname,gender, "
          + "status,address,phno,city,dob,insurance,state,postalcode,country,join_date,username,password,desg,rate) "
          + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,CURDATE(),?,?,?,?)");
  PreparedStatement ps=con.prepareStatement(sql);
  
   ps.setString(1,fname);
       ps.setString(2,lname);
       ps.setString(3,gender);
       ps.setString(4,status);
       ps.setString(5,addr);
       ps.setString(6,phno);
       ps.setString(7,city);
       ps.setString(8,dob);
       ps.setString(9,health);
       ps.setString(10,state);
       ps.setString(11,pcode);
       ps.setString(12,country);
       ps.setString(13,fname);
       ps.setString(14,phno);
       ps.setString(15,d);
       ps.setInt(16,rate);
       ps.executeUpdate();
       
       
       String sql1=("INSERT INTO login(username,password,type) VALUES (?,?,?)");
       
       PreparedStatement ps1=con.prepareStatement(sql1);
       ps1.setString(1,fname);
       ps1.setString(2,phno);
       ps1.setString(3,"Employee");
       ps1.executeUpdate();
  
       Statement statement = null;
ResultSet resultSet = null;

statement = con.createStatement();

String sql2=("SELECT emp_id FROM emp ORDER BY emp_id DESC LIMIT 1;");
resultSet=statement.executeQuery(sql2);

while (resultSet.next()) {
    
last_id=resultSet.getInt("emp_id");


  
}

  }
  catch(Exception e){ e.printStackTrace();
  
response.sendRedirect("emplyeeReg.jsp");
  }  

  
%>

<br>
<br>
    <center><font color="white"><h1>Data Validation</h1></font>
    <br><br><h2><font color="white">Record Inserted Successfully!!</font></h2><br><br>
    <h2><font color="green">Empoyee ID</font></h2><br><br>
    <u><font color="white"><h3><%=last_id%></h3></font></u>
    <br>
    <br>
    <form action="salaryid.jsp">
        <input type="submit" value="Proceed" class="btn-primary">
        </form></center>

    </body>
</html>
