
<!DOCTYPE html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Login</title>
    <link rel="stylesheet" href="sh_style1.css">
    <link rel="stylesheet" href="style.css">
    <!-- End Layout styles -->
<style type="text/css">
  body {
 background-image: url("log.jpeg");
 background-repeat: no-repeat;
      background-size: 100% 100%;
}
</style>
  </head>
  <body>
 <div class="login-page">

  <div class="form">
      <h1>Login </h1>
   
    <form class="login-form" method="get" action="loginvalidate.jsp">
        <input type="text" placeholder="username"  name="username" autocomplete="off" required style="text-align: center;">
      <input type="password" placeholder="password" name="password" autocomplete="off" required  style="text-align: center;">
      <select name="User Type"  class="custom-select" >
  <option value="Admin">Admin</option>
  <option value="Employee">Employee</option>
</select>
     <button type="submit" style="margin-top: 10px;"> login</button>
      <p class="message">Not registered? <a href="">Create an account</a></p>
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