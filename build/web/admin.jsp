<%@ page import="java.util.*"%>
<%@ page import="java.sql.*"%>

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
    
      table{
          border-collapse: separate;
          border-spacing: 0 1em;
      }
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
              <a class="nav-link" data-toggle="collapse" href="emplyeeReg.jsp" aria-expanded="false" aria-controls="ui-basic">
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
                  <h4 class="page-title">Dashboard</h4>
              
                </div>
              </div>
              
                <div class="page-header-toolbar" >

                    
                
              </div>
            </div>
            <div class="cotainer" style="background-image: url('dash3.jpg')">
          
               
               <h2></h2>
                    <br>
                        <div class="main-panel">
       <br>
                    <%--
                       
                    out.println("<from>");
                        out.println("<table cellspacing='15'>");
                            out.println("<tr><input type='text' name='fname' maxlength='15' placeholder='Firstname'></tr>");
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='lname' maxlength='15' placeholder='Lastname'></tr>");
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='gender' placeholder='M/F' maxlength='2'></tr>");
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='status' placeholder='married/single' maxlength='9'></tr>");
                            out.println("<tr>&nbsp;&nbsp;&nbsp;</tr>");
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='address' maxlength='25' placeholder='Address'></tr>");   
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='number' name='phno' maxlength='10' placeholder='Contact no.'></tr>");
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='city' maxlength='15' placeholder='City'></tr>");   
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='dob' maxlength='15' placeholder='DOB'></tr>");   
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='insurance' maxlength='15' placeholder='Insurance'></tr>");  
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='state' maxlength='20' placeholder='State'></tr>");   
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='pcode' maxlength='6' placeholder='Postal code'></tr>");   
                            out.println("&nbsp;&nbsp;&nbsp;<tr><input type='text' name='country' maxlength='20' placeholder='Country'></tr>");   
                            out.println("&nbsp;&nbsp;&nbsp;<tr></tr>"); 
                            out.println("</table>");
                    out.println("</from>");
                                    
                    
               --%>
          <div>
          </div>
           </div>
          <footer class="footer">
            <div class="container-fluid clearfix">
           
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
              </span>
            </div>
          </footer>
        </div>
      </div>
    </div>
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <script src="sh_off-canvas.js"></script>
    <script src="sh_misc.js"></script>
   
    <script src="dashboard.js"></script>
  
  </body>
</html>