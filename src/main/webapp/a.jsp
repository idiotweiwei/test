<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/4
  Time: 上午11:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="/tags" prefix="date"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<b>今天的前天</b>


<div>
    <c:forEach items="${list}" var="ls" begin="0" end="5">
        <date:date value="${ls.createAt}"/>
    </c:forEach>
</div>


<p>end</p>
</body>
</html>
