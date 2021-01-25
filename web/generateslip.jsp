<%-- 
    Document   : salaryslip
    Created on : Feb 23, 2020, 8:57:39 PM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import= "java.util.Calendar"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>DashBoard</title>
    <link rel="stylesheet" href="sh_style1.css">
    <link rel="stylesheet" href="style.css">
   <link rel="stylesheet" type="text/css" href=" https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  <style type="text/css">
     #sidebar{
      background-image: url("dash1.jpeg");
      background-repeat: no-repeat;
      background-size: 100% 100%;
    }
  </style>
  </head>
  <body>
    <div class="container-scroller">
      <nav class="navbar default-layout col-lg-12 col-12 p-0 fixed-top d-flex flex-row">
        <div class="text-center navbar-brand-wrapper d-flex align-items-top justify-content-center">
          <a class="navbar-brand brand-logo" href="">
  <i class="fa fa-user" aria-hidden="true" style="
    margin: 30px;
"></i>
</a>
          <a class="navbar-brand brand-logo-mini" href="">
         <i class="fa fa-user" aria-hidden="true" style="
    margin: 30px;
"></i>
</a>
        </div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
          <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-none d-lg-block"></li>
            <li class="nav-item font-weight-semibold d-none d-lg-block" style="color: green;">Help : +91 9607307968  /  7507375918 </li>
            
          </ul>
        
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
               <a href="login.jsp">   <i class="fa fa-sign-out fa-4" aria-hidden="true" style="size: 45px"></i></a> 
                
              </a>
             
            </li>
           
           
           
          </ul>
          <button class="navbar-toggler navbar-toggler-right d-lg-none align-self-center" type="button" data-toggle="offcanvas">
            <span class="mdi mdi-menu"></span>
          </button>
        </div>
      </nav>
      <!-- partial -->
      <div class="container-fluid page-body-wrapper">
        <!-- partial:partials/_sidebar.html -->
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
           
            <li class="nav-item nav-category" style="text-align: center;">Admin Main Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="admin.jsp">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            
            <li class="nav-item">
              <a class="nav-link" href="salaryid.jsp">
                <i class="menu-icon typcn typcn-shopping-bag"></i>
                <span class="menu-title">Salary</span>
              </a>
            </li>
    
  
          </ul>
        </nav>
        <!-- partial -->
        <div class="main-panel">
          <div class="content-wrapper">
            <!-- Page Title Header Starts-->
            <div class="row page-title-header">
              <div class="col-12">
                <div class="page-header">
                       <h3 class="page-title">Payslip</h3>
                <ul class="breadcrumb">
                  
                  <li class="breadcrumb-item active">Payslip</li>
                </ul>
              </div>
          </div>
                <%!
                Calendar now = Calendar.getInstance();
                int yr=now.get(Calendar.YEAR);
                int mon=(now.get(Calendar.MONTH) + 1);
                %>
           
       <%
       
       
       %>

<div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-body">
                  <h4 class="payslip-title" style="text-align: center;">Payslip for the month of <%= now.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.ENGLISH )%> <%= yr%></h4>
                  <div class="row"> 
                    <div class="col-sm-6 m-b-20">
                      <ul class="list-unstyled mb-0">
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>AP Consolidated</b></li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>NIBM</b> </li>
                        <li>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>Pune</b></li>
                      </ul>
                        <br>
                        <br>
                              <%!
                  String i;
                  int k,newid;
                  %>
                  
                  
<%
//           String uname=(String)session.getAttribute("user");
//            String pass=(String)session.getAttribute("pass");
            String ref=(String)session.getAttribute("refid");
            String r=request.getParameter("reference");
            int key=Integer.parseInt(r);
            newid=key;
            try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    
    
  PreparedStatement stmt=con.prepareStatement("SELECT * FROM emp WHERE emp_id=?");  
  stmt.setInt(1, key);
  
  
  ResultSet rs=stmt.executeQuery();  
while(rs.next()) 
{
    i=rs.getString(1);
    k=Integer.parseInt(i);

    %>           
                    </div>
                    <div class="col-sm-6 m-b-20">
                      <div class="invoice-details" style="text-align: end;">
                        <h3 class="text-uppercase">Payslip #<%= k%></h3>
                        <ul class="list-unstyled">
                          <li>Salary Month: <span><%= now.getDisplayName(Calendar.MONTH, Calendar.LONG, Locale.ENGLISH)%> <%= yr%></span></li>
                        </ul>
                      </div>
                    </div>
                  </div>
                   
                  
                  <div class="row">
                    <div class="col-lg-12 m-b-20">
                      <ul class="list-unstyled">
                        <li><h5 class="mb-0"><strong><%= rs.getString(2) %> <%= rs.getString(3) %></strong></h5></li>
<!--                        <li><span>Designationr</span></li>-->
                        <li><%= rs.getString(1) %></li>
                        <li><%= rs.getString(14) %></li>
                      </ul>
                    </div>
                                <%}
  }
  catch(Exception e){ e.printStackTrace();}  
%>
                    </div>
                  </div>
                  <div class="row">
                    <div class="col-sm-6">
                      <div>
                          
                        <%
         
            
            try {
                
                String ref1=(String)session.getAttribute("refid");
            int key1=Integer.parseInt(ref1);
            
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    
    
  PreparedStatement stmt1=con1.prepareStatement("SELECT s.s_id,s.emp_id,s.basic,s.da,s.hra,s.conveyance,s.allowance,s.medical,s.tds,s.esi,s.pf,s.leaves,s.tax,s.labour,s.net_sal FROM salary s,emp e WHERE e.emp_id="+key+" and s.emp_id="+key+"");  
  
  
  ResultSet rs1=stmt1.executeQuery();  
while(rs1.next()) 
{
    

   %>           
                          
                        <h4 class="m-b-10"><strong>&nbsp;&nbsp;&nbsp;Earnings</strong></h4>
                        <table class="table table-bordered">
                          <tbody>
                            <tr>
                              <td><strong>Basic Salary</strong> <span class="float-right"><%= rs1.getString(3)%></span></td>
                            </tr>
                            <tr>
                              <td><strong>House Rent Allowance (H.R.A.)</strong> <span class="float-right"><%= rs1.getString(5) %></span></td>
                            </tr>
                            <tr>
                              <td><strong>Conveyance</strong> <span class="float-right"><%= rs1.getString(6)%></span></td>
                            </tr>
                            <tr>
                              <td><strong>Allowance</strong> <span class="float-right"><%= rs1.getString(7) %></span></td>
                            </tr>
                            <tr>
                              <td><strong>Medical Allowance</strong> <span class="float-right"><%= rs1.getString(8)%></span></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div>
                        <h4 class="m-b-10"><strong>&nbsp;&nbsp;&nbsp;Deductions</strong></h4>
                        <table class="table table-bordered">
                          <tbody>
                            <tr>
                              <td><strong>Tax Deducted at Source (T.D.S.)</strong> <span class="float-right"><%= rs1.getString(9) %></span></td>
                            </tr>
                            <tr>
                              <td><strong>Provident Fund</strong> <span class="float-right"><%= rs1.getString(11) %></span></td>
                            </tr>
                            <tr>
                              <td><strong>ESI</strong> <span class="float-right"><%= rs1.getString(10) %></span></td>
                            </tr>
                            <tr>
                              <td><strong>Tax</strong> <span class="float-right"><%= rs1.getString(13)%></span></td>
                            </tr>
                            <tr>
                              <td><strong>Leaves</strong> <span class="float-right"><%= rs1.getString(12)%></span></td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                    <div class="col-sm-12">
                        <br>
                      <h3><p><strong>&nbsp;&nbsp;&nbsp;&nbsp;<u>Net Salary: <%= rs1.getString(15) %></u></strong> </p></h3>
                    </div>
                  </div>
                </div>
                                           <%}
  }
  catch(Exception e){ e.printStackTrace();}  
%>
              </div>
            </div>
          </div>
                </div>
        <!-- /Page Content -->

          <div class="main-panel">
          <div class="content-wrapper"> </div>
          <footer class="footer">
            <div class="container-fluid clearfix">
              
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
              </span>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <script src="dashboard.js"></script>
  
  </body>
</html>
