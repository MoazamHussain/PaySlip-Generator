 
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>DashBoard</title>
    <link rel="stylesheet" href="sh_style1.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" type="text/css" href=" https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  
  </head>
  <style type="text/css">
     #sidebar{
      background-image: url("side1.jpg");
      background-repeat: no-repeat;
      background-size: 100% 100%;
    }
    
  </style>
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
</a></div>
        <div class="navbar-menu-wrapper d-flex align-items-center">
          <ul class="navbar-nav">
            <li class="nav-item font-weight-semibold d-none d-lg-block"></li>
            <li class="nav-item font-weight-semibold d-none d-lg-block" style="color: green;">Help : +91 9607307968  /  7507375918 </li>
         
          </ul>
        
          <ul class="navbar-nav ml-auto">
            <li class="nav-item dropdown">
              <a class="nav-link count-indicator" id="messageDropdown" href="#" data-toggle="dropdown" aria-expanded="false">
                <i class="mdi mdi-bell-outline"></i>
                 <a href="login.jsp">   <i class="fa fa-sign-out fa-3" aria-hidden="true"></i></a> 
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
           
            <li class="nav-item nav-category" style="text-align: center;"> Admin Main Menu</li>
            <li class="nav-item">
              <a class="nav-link" href="admin.jsp">
                <i class="menu-icon typcn typcn-document-text"></i>
                <span class="menu-title">Dashboard</span>
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" data-toggle="collapse" href="" aria-expanded="false" aria-controls="ui-basic">
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
                  <h4 class="page-title">Personal Details</h4>
              
                </div>
              </div>
              <div class="col-md-12">
                <div class="page-header-toolbar">
             
                </div>
              </div>
            </div>
              <div class="cotainer" style="background-image: url('dashdp.jpg')">
            <form class="login-form" action="validateemp.jsp">                
                  <div class="card-body">
                    <h4 class="card-title"></h4>
                    <form class="form-sample">
                      <h5 class="card-description" style="font-weight: 600">  </h5>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">First Name</label>
                            <div class="col-sm-9">
                              <input type="text" maxlength="20" name="fname" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Last Name</label>
                            <div class="col-sm-9">
                              <input type="text" maxlength="20" name="lname" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Gender</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="gender">
                                <option value="m">Male</option>
                                <option value="f">Female</option>
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Date of Birth</label>
                            <div class="col-sm-9">
                                <input type="date" class="form-control" placeholder="dd/mm/yyyy" name="dob" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Status</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="status">
                                <option value="married">Married</option>
                                <option value="single">Single</option>                              
                              </select>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Insurance</label>

                            <div class="col-sm-4">
                              <div class="form-radio">


                                <label class="">
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios1" value="health" unchecked> Health Insurance </label>
                              </div>
                            </div>
                            <div class="col-sm-5">
                              <div class="form-radio">
                                <label >
                                  <input type="radio" class="form-check-input" name="membershipRadios" id="membershipRadios2" value="life" unchecked> Life Insurance </label>

                              </div>
                            </div>

                          </div>
                        </div>

                      </div>
                      <p class="card-description"><h3> Address</h3> </p>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Address </label>
                            <div class="col-sm-9">
                                <input type="text" class="form-control" name="address" autocomplete="off" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">State</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" name="state" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Phone number</label>
                            <div class="col-sm-9">
                              <input type="number" name="phno" maxlength="10" class="form-control" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Postcode</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" maxlength="6" name="pcode" required/>
                            </div>
                          </div>
                        </div>
                      </div>
                      <div class="row">
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">City</label>
                            <div class="col-sm-9">
                              <input type="text" class="form-control" name="city" required/>
                            </div>
                          </div>
                        </div>
                        <div class="col-md-6">
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Country</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="country">
                                  <option value="india">India</option>
                                <option value="italy">Italy</option>
                                <option value="russia">Russia</option>
                                <option value="britian">Britain</option>
                              </select>
                            </div>
                          </div>
                        </div>
                          <div class="col-md-6">
                              <p class="card-description"><h3> Employee Designation</h3> 
                                  </p>
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Designation</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="desg">
                                  <option value="Android Developer">Android Developer</option>
                                <option value="Java Developer">Java Developer</option>
                                <option value="Tech Support">Tech Support</option>
                                <option value="Python Developer">Python Developer</option>
                              </select>
                            </div>
                          </div>
                        </div>
                          <div class="col-md-6">
                              <p class="card-description"><h3> Employee Ratings</h3> 
                                  </p>
                          <div class="form-group row">
                            <label class="col-sm-3 col-form-label">Ratings</label>
                            <div class="col-sm-9">
                              <select class="form-control" name="rate">
                                  <option value="3">3</option>
                                <option value="4">4</option>
                                <option value="5">5</option>
                                <option value="6">6</option>
                                <option value="7">7</option>
                                <option value="8">8</option>
                                <option value="9">9</option>
                                <option value="10">10</option>
                              </select>
                            </div>
                          </div>
                        </div>
                          
                          
<!--                          <button type="submit" style="margin-top: 10px;"> submit</button>-->
                      </div>
                    <input type="submit" class="btn-primary" value="Submit">
                  </div>
                    <footer class="footer">
            <div class="container-fluid clearfix">
              
              <span class="float-none float-sm-right d-block mt-1 mt-sm-0 text-center">
              </span>
            </div>
  </div>
          </footer>
        </div>
      </div>
                </form>
    </div>
    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <script src="sh_off-canvas.js"></script>
    <script src="sh_misc.js"></script>
       <script src="new.js"></script>
    <script src="dashboard.js"></script>
 
  </body>
</html>