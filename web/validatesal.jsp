<%-- 
    Document   : validatesal
    Created on : Feb 22, 2020, 7:39:54 PM
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
            int empid=Integer.parseInt(request.getParameter("empid"));
            int basic=Integer.parseInt(request.getParameter("basic"));
            int da=Integer.parseInt(request.getParameter("da"));
            int hra=Integer.parseInt(request.getParameter("hra"));
            int convey=Integer.parseInt(request.getParameter("convey"));
            int allow=Integer.parseInt(request.getParameter("allow"));
            int med=Integer.parseInt(request.getParameter("med"));
            int tds=Integer.parseInt(request.getParameter("tds"));
            int esi=Integer.parseInt(request.getParameter("esi"));
            int pf=Integer.parseInt(request.getParameter("pf"));
            int leave=Integer.parseInt(request.getParameter("leave"));
            int tax=Integer.parseInt(request.getParameter("tax"));
            int labour=Integer.parseInt(request.getParameter("labour"));
            
            int net=0,add=0,sub=0;
            add=add+basic+da+hra+convey+allow+med;
            sub=sub+tds+esi+pf+leave+tax+labour;
            net=add-sub;
            
  try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    String flag;
//    if(health.equalsIgnoreCase("health"))
//    {
//        flag="health";
//    }
//    else
//    {
//        flag="life";
//    }
    Statement stmt=con.createStatement();   
  String sql=("INSERT INTO salary(emp_id,basic,da,hra,conveyance,allowance,medical,tds,esi,pf,leaves,tax,labour,net_sal) "
          + "VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
  PreparedStatement ps=con.prepareStatement(sql);
  
   ps.setInt(1,empid);
       ps.setInt(2,basic);
       ps.setInt(3,da);
       ps.setInt(4,hra);
       ps.setInt(5,convey);
       ps.setInt(6,allow);
       ps.setInt(7,med);
       ps.setInt(8,tds);
       ps.setInt(9,esi);
       ps.setInt(10,pf);
       ps.setInt(11,leave);
       ps.setInt(12,tax);
       ps.setInt(13,labour);
       ps.setInt(14,net);
       
       ps.executeUpdate();
       
  
  response.sendRedirect("salary.jsp");
 

  }
  catch(Exception e){ e.printStackTrace();
  out.println(e);
  //response.sendRedirect("emplyeeReg.jsp");
  }  

  
%>

        
        <h1>Hello World!</h1>
    </body>
</html>
