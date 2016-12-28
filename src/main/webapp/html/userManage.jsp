<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>SpringMVC 用户管理</title>
  <link rel="stylesheet" href="css/bootstrap.min.css">

  <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="//cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="//cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body>
<div class="container">
  <h1>SpringMVC 用户管理</h1>
  <hr/>

  <h3>所有用户 <a href="addUser" type="button" class="btn btn-default btn-sm">添加</a></h3>

  <!-- 如果用户列表为空 -->
  <c:if test="${empty userList}">
    <p class="bg-warning">
      <br/>
      User表为空，请<a href="addUser" type="button" class="btn btn-default btn-sm">添加</a>
      <br/>
      <br/>
    </p>
  </c:if>

  <!-- 如果用户列表非空 -->
  <c:if test="${!empty userList}">
    <table class="table table-bordered table-striped">
      <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>密码</th>
        <th>操作</th>
      </tr>

      <c:forEach items="${userList}" var="user">
        <tr>
          <td>${user.id}</td>
          <td>${user.firstName} ${user.lastName}</td>
          <td>${user.password}</td>
          <td>
            <a href="showUser/${user.id}" type="button" class="btn btn-sm btn-success">详情</a>
            <a href="updateUser/${user.id}" type="button" class="btn btn-sm btn-warning">修改</a>
            <a href="deleteUser/${user.id}" type="button" class="btn btn-sm btn-danger">删除</a>
          </td>
        </tr>
      </c:forEach>
    </table>
  </c:if>
</div>

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</body>
</html>
