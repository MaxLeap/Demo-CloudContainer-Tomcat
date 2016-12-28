<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SpringMVC 用户详情</title>
  <link rel="stylesheet" href="../css/bootstrap.min.css">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="container">
  <h1>SpringMVC 用户详情</h1>
  <hr/>

  <table class="table tavble-bordered table-striped">
    <tr>
      <th>ID</th>
      <td>${user.id}</td>
    </tr>
    <tr>
      <th>First Name</th>
      <td>${user.firstName}</td>
    </tr>
    <tr>
      <th>Last Name</th>
      <td>${user.lastName}</td>
    </tr>
    <tr>
      <th>Password</th>
      <td>${user.password}</td>
    </tr>
  </table>
</div>

<script src="../js/jquery.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>