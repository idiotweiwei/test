<%@ taglib prefix="u" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/27
  Time: 下午11:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="x" %>
<html>
<head>
    <title>学员列表</title>
</head>
<body>
<div style="width: 500px;margin: 0px auto;text-align: center">
    <table align='center' border='1' cellspacing='0' width='150%'>
        <tr>
            <td>编号</td>
            <td>创建者</td>
            <td>创建时间</td>
            <td>学员姓名</td>
            <td>工作状态</td>
            <td>工作职位</td>
            <td>工作宣言</td>
            <td>更新者</td>
            <td>更新时间</td>
            <td>编辑</td>
            <td>修改</td>
        </tr>

        <x:forEach items="${list}" var="s" varStatus="st">
            <tr>
                <td>${s.id}</td>
                <td>${s.createBy}</td>
                <td>${s.createAt}</td>
                <td>${s.studentName}</td>
                <td>${s.isWorking}</td>
                <td>${s.studentPosition}</td>
                <td>${s.summary}</td>
                <td>${s.updateBy}</td>
                <td>${s.updateAt}</td>
                <td><a href="/Student/updateStudent?id=${s.id}">修改</a></td>
                <td><a href="/Student/deleteStudent?id=${s.id}">删除</a></td>
            </tr>
        </x:forEach>
    </table>

    <div style="text-align: center;margin: 40px">
        <form action="${pageContext.request.contextPath}/Student/addStudent" method="get">
            <input type="submit" value="增加"/>
        </form>
    </div>

    <div style="text-align: center;margin: 40px">
        <form action="${pageContext.request.contextPath}/Student/searchStudent" method="get">
            <input type="submit" value="查询"/>
        </form>
    </div>
</div>
</body>
</html>
