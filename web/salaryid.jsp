
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Salary</title>
    <link rel="stylesheet" href="sh_style1.css">
    <link rel="stylesheet" href="style.css">
    <!-- End Layout styles -->
<style type="text/css">
  body {
 background-image: url("money4.jpeg");
      background-repeat: no-repeat;
      background-size: 100% 100%;
}
</style>
  </head>
  <body>
 <div class="login-page">

  <div class="form">
      <h1>Enter Employee ID</h1>
    <form class="register-form" >
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
<!--      <p class="message">Already registered? <a href="#">Sign In</a></p>-->
    </form>
    <form class="login-form" method="get" action="salary.jsp">
        <input type="number" placeholder="Employee ID"  name="eid" style="text-align: center;" required>
<!--      <input type="password" placeholder="password" name="password"  style="text-align: center;">
      <select name="User Type"  class="custom-select" >
  <option value="Admin">Admin</option>
  <option value="Employee">Employee</option>
</select>-->
     <button type="submit" style="margin-top: 10px;"> Submit</button>
<!--      <p class="message">Not registered? <a href="#">Create an account</a></p>-->
    </form>
  </div>
</div>


    <script src="../assets/vendors/js/vendor.bundle.base.js"></script>
    <script src="../assets/vendors/js/vendor.bundle.addons.js"></script>
    <script src="sh_off-canvas.js"></script>
    <script src="sh_misc.js"></script>
   
    <script src="dashboard.js"></script>
  <script type="text/javascript">
    $('.message a').click(function(){
   $('form').animate({height: "toggle", opacity: "toggle"}, "slow");
});
  </script>
  </body>
</html>