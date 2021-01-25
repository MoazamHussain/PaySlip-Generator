<%-- 
    Document   : salary
    Created on : Feb 22, 2020, 8:26:36 AM
    Author     : Moazam
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>

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
    
.card.chat-room .members-panel-1,
.card.chat-room .chat-1 {
position: relative;
overflow-y: scroll; }

.card.chat-room .members-panel-1 {
height: 570px; }

.card.chat-room .chat-1 {
height: 495px; }

.card.chat-room .friend-list li {
border-bottom: 1px solid #e0e0e0; }
.card.chat-room .friend-list li:last-of-type {
border-bottom: none; }

.scrollbar-light-blue::-webkit-scrollbar-track {
-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
background-color: #F5F5F5;
border-radius: 10px; }

.scrollbar-light-blue::-webkit-scrollbar {
width: 12px;
background-color: #F5F5F5; }

.scrollbar-light-blue::-webkit-scrollbar-thumb {
border-radius: 10px;
-webkit-box-shadow: inset 0 0 6px rgba(0, 0, 0, 0.1);
background-color: #82B1FF; }

.rare-wind-gradient {
background-image: -webkit-gradient(linear, left bottom, left top, from(#a8edea), to(#fed6e3));
background-image: -webkit-linear-gradient(bottom, #a8edea 0%, #fed6e3 100%);
background-image: linear-gradient(to top, #a8edea 0%, #fed6e3 100%); }
h2.table-avatar{
  font-size: 15px;
}
.custom-modal .modal-content {
    border: 0;
    border-radius: 10px;
}
.modal-content {
    position: relative;
    display: -ms-flexbox;
    display: flex;
    -ms-flex-direction: column;
    flex-direction: column;
    width: 100%;
    pointer-events: auto;
    background-color: #fff;
    background-clip: padding-box;
    border: 1px solid rgba(0,0,0,.2);
    border-radius: .3rem;
    outline: 0;




    
}


.modal-dialog {
    position: relative;
    width: auto;
    margin: .5rem;
    pointer-events: none;
}
 #sidebar{
      background-image: url("side1.jpg");
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
"></i></a>
          
          <a class="navbar-brand brand-logo-mini" href="">
            <i class="fa fa-user" aria-hidden="true" style="
    margin: 30px;
"></i>
          </a></div>
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
      <div class="container-fluid page-body-wrapper">
        <nav class="sidebar sidebar-offcanvas" id="sidebar">
          <ul class="nav">
           
            <li class="nav-item nav-category" style="text-align: center;">      Admin Main Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="admin.jsp">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link"  href="emplyeeReg.jsp">
                <i class="menu-icon typcn typcn-coffee"></i>
                <span class="menu-title">Employee Registration</span>

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
                  <div class="row align-items-center">
              <div class="col">
                <h3 class="page-title">Employee Salary</h3>
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="admin.jsp">Dashboard</a></li>
                  <li class="breadcrumb-item active">Salary</li>
                </ul>
              </div>
                <div class="col-auto float-right ml-auto">
                <a href="inputsal.jsp">Add Salary</a>
              </div>
                </div>
              </div>
              <div class="col-md-12" >
                <div class="page-header-toolbar">
             

<!--<div id="add_salary" class="modal custom-modal fade" role="dialog">
          <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title">Add Staff Salary</h5>
                
              </div>
              <div class="modal-body">
                
                     <%!
                         String ename,id;
                         int k;
                         
                         %>
                         <%
try {
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
    
                        id=request.getParameter("eid");
                        k=Integer.parseInt(id);
    
Statement statement = null;
ResultSet resultSet = null;

statement = con.createStatement();
String sql = "SELECT firstname,lastname FROM emp where emp_id="+id+"";

String n1,n2;

resultSet=statement.executeQuery(sql);

while (resultSet.next()) {
    
n1=resultSet.getString("firstname");
n2=resultSet.getString("lastname");
ename=n1.concat(n2);


session.setAttribute("seid",id);
session.setAttribute("sessname",ename); 
}
}

catch(Exception e)
{
    e.printStackTrace();
}

%>
<form action="validatesal.jsp">
                  <div class="row"> 
                    <div class="col-sm-6"> 
                      <div class="form-group">
                          <form action="salary.jsp">
                              <label>Select Employee Id  <input type="text" value="" name="empid" readonly></label>
                          
                     <br>
                     <label>Employee Name : <input type="text" value="" readonly></label>

                      </div>
                    </div>
                        
                         </form>                    
                    <div class="col-sm-6"> 
                      <label>Net Salary</label>
                      <input class="form-control" type="text">
                    </div>
                  </div>
                  <div class="row"> 
                    <div class="col-sm-6"> 
                      <h4 class="text-primary">Earnings</h4>
                      <div class="form-group">
                        <label>Basic</label>
                        <input class="form-control" type="number" name="basic">
                      </div>
                      <div class="form-group">
                        <label>DA(40%)</label>
                        <input class="form-control" type="number" name="da">
                      </div>
                      <div class="form-group">
                        <label>HRA(15%)</label>
                        <input class="form-control" type="number" name="hra">
                      </div>
                      <div class="form-group">
                        <label>Conveyance</label>
                        <input class="form-control" type="number" name="convey">
                      </div>
                      <div class="form-group">
                        <label>Allowance</label>
                        <input class="form-control" type="number" name="allow">
                      </div>
                      <div class="form-group">
                        <label>Medical  Allowance</label>
                        <input class="form-control" type="number" name="med">
                      </div>
                      

                    </div>
                    <div class="col-sm-6">  
                      <h4 class="text-primary">Deductions</h4>
                      <div class="form-group">
                        <label>TDS</label>
                        <input class="form-control" type="number" name="tds">
                      </div> 
                      <div class="form-group">
                        <label>ESI</label>
                        <input class="form-control" type="number" name="esi">
                      </div>
                      <div class="form-group">
                        <label>PF</label>
                        <input class="form-control" type="number" name="pf">
                      </div>
                      <div class="form-group">
                        <label>Leave</label>
                        <input class="form-control" type="number" name="leave">
                      </div>
                      <div class="form-group">
                        <label>Prof. Tax</label>
                        <input class="form-control" type="number" name="tax">
                      </div>
                      <div class="form-group">
                        <label>Labour Welfare</label>
                        <input class="form-control" type="number" name="labour">
                      </div>
                      
                      
                    </div>
                  </div>
                  <div class="submit-section">
                    <button class="btn btn-primary submit-btn">Submit</button>
                  </div>
                     <button type="submit" value="Submit"/>
                </form>
              </div>
            </div>
          </div>
        </div>-->
        <!-- /Add Salary Modal -->
          
          <div class="row" >
              <div class="col-md-12" style="background-image:url('dash1.jpeg')">
                <div class="table-responsive" style="background-color:lightsteelblue">
                <table class="table table-striped custom-table datatable">
        
                    <tr>
       
                      <th>Employee ID</th>
                      <th>Employee </th>
                      <th>Designation</th>
                      <th>Join Date</th>
                      <th>Salary</th>
                      <th>Payslip</th>
                      
                    </tr>
                <%!
                         String val;
                %>
                                           <%
        try {
    
    Class.forName("com.mysql.jdbc.Driver");  
    Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/payslip","root",""); 
   
    
  Statement stmt2=con1.createStatement();  
  
  session.setAttribute("salslip",k);
  ResultSet rs2=stmt2.executeQuery("SELECT * FROM salary s,emp e where e.emp_id=s.emp_id ");  
while(rs2.next()) 
{
    
val=rs2.getString("e.emp_id");
session.setAttribute("refid",val);
   %>    
                    <tr>
                      <td><%=rs2.getInt("e.emp_id")%>
<!--                        <h2 class="table-avatar">-->
<!--                          <a href="" class="avatar"><img alt="" src="https://dreamguys.co.in/smarthr/orange/assets/img/profiles/avatar-02.jpg"></a>-->
                           
<!--                        </h2>-->
                      </td>
                      <td><%= rs2.getString("e.firstname")%><%= rs2.getString("e.lastname")%></td>
                      <td><%= rs2.getString("e.desg")%></td>
                      <td><%= rs2.getString("e.join_date")%></td>
                      <td><%= rs2.getString("s.net_sal")%> </td>
                      
                    <form action="generateslip.jsp"> <td><input class="btn btn-sm btn-primary" type="submit" name="reference" value="<%=val%>">Generate Slip</td></form>
                     
                    </tr>

                  
                                          <%}
  }
  catch(Exception e){ e.printStackTrace();}  
%>
                    
                </table>
              </div>
            </div>
          </div>
                </div>
        <!-- /Page Content -->

       

<!--           <div class="main-panel">
          <div class="content-wrapper"> </div>
          <footer class="footer">
            <div class="container-fluid clearfix">
           
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
              </span>
            </div>
          </footer>
        </div>-->
      </div>
    </div>
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <script src="sh_off-canvas.js"></script>
    <script src="sh_misc.js"></script>
   
    <script src="dashboard.js"></script>
      <!-- jQuery -->
        <script src="https://dreamguys.co.in/smarthr/orange/assets/js/jquery-3.2.1.min.js"></script>

    <!-- Bootstrap Core JS -->
        <script src="https://dreamguys.co.in/smarthr/orange/assets/js/popper.min.js"></script>
        <script src="https://dreamguys.co.in/smarthr/orange/assets/js/bootstrap.min.js"></script>

    <!-- Slimscroll JS -->
<!--    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/jquery.slimscroll.min.js"></script>
    -->
    <!-- Select2 JS -->
<!--    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/select2.min.js"></script>
    -->
    <!-- Datetimepicker JS -->
    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/moment.min.js"></script>
    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/bootstrap-datetimepicker.min.js"></script>
    
    <!-- Datatable JS -->
    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/jquery.dataTables.min.js"></script>
    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/dataTables.bootstrap4.min.js"></script>   

    <!-- Custom JS -->
    <script src="https://dreamguys.co.in/smarthr/orange/assets/js/app.js"></script>
    
  </body>
</html>