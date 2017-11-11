<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/25
  Time: 下午8:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册页面</title>
</head>
<body>
<h1>添加信息</h1>
<form id="form2" action="${pageContext.request.contextPath}/user/registInto" method="post">
    <div class="form-group">
        <label for="username">用户名:</label>
        <input type="text" id="username" name="username" placeholder="请输入用户名:"/>
    </div>
    <div class="form-group">
        <label for="password">密码 :</label>
        <input type="text" id="password" name="password" placeholder="请输入密码:" />
    </div>
    <div class="form-group">
        <button type="submit" class="btn btn-sm btn-success">注册</button>
    </div>
</form>
</body>
</html>
