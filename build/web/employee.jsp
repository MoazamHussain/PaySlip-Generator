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
      background-image: url("dash7.jpg");
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
        <nav class="sidebar sidebar-offcanvas" id="sidebar" style="">
          <ul class="nav">
           
            <li class="nav-item nav-category" style="text-align: center;">Employee Main Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="employee.jsp">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="up.jsp" aria-expanded="false" aria-controls="ui-basic">
                <i class="menu-icon typcn typcn-coffee"></i>
                <span class="menu-title">Change Username/Password</span>

              </a>
      
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="profile.jsp" aria-expanded="false" aria-controls="ui-basic">
                <i class="menu-icon typcn typcn-coffee"></i>
                <span class="menu-title">Profile</span>

              </a>
      
            </li>
            <li class="nav-item">
              <a class="nav-link" href="salaryslip.jsp">
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
                <div class="col-md-12" >
                <div class="page-header-toolbar" >
                    <img src="das8.jpg">
                </div>
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
    <script src="dashboard.js"></script>
  
  </body>
</html>