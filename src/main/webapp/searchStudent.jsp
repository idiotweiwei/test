<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/10/28
  Time: 下午9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>查询页面</title>
</head>
<body>

    <h1>查询界面</h1>
    <table width="60%" border="1px" cellpadding="0" cellspacing="0">
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
        <tr>
            <td>${ss.id}</td>
            <td>${ss.createBy}</td>
            <td>${ss.createAt}</td>
            <td>${ss.studentName}</td>
            <td>${ss.isWorking}</td>
            <td>${ss.studentPosition}</td>
            <td>${ss.summary}</td>
            <td>${ss.updateBy}</td>
            <td>${ss.updateAt}</td>
            <td><a href="/Student/updateStudent?id=${ss.id}">修改</a></td>
            <td><a href="/Student/deleteStudent?id=${ss.id}">删除</a></td>
        </tr>
        <form action="${pageContext.request.contextPath}/Student/searchStudentId" method="get">
        输入ID<input type="text" name="searchId"/>
        <input type="submit"  value="查询"/>
        </form>
    </table>

</body>
</html>
