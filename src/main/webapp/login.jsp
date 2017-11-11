<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/23
  Time: 下午2:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>登录注册页面</title>
</head>
<body>
<form name="form1" action="${pageContext.request.contextPath}/user/loginInto" method="post">
    <table width="300" border="1" align="center">
        <tr>
            <td colspan="2">登录窗口</td>
        </tr>
        <tr>
            <td>用户名：</td>
            <td><input type="text" name="username"/></td>
        </tr>
        <tr>
            <td>密码：</td>
            <td><input type="password" name="password"/></td>
        </tr>
        <tr>
            <td><input type="submit" value="登录"/></td>
        </tr>
    </table>
</form>

<form action="${pageContext.request.contextPath}/user/regist" method="post">
    <table width="300" border="1" align="center">
        <td colspan="2"><input type="submit" name="submit" value="注册"></td>
    </table>
</form>
</body>
</html>
