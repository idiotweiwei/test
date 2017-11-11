<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: guoweijie
  Date: 2017/11/6
  Time: 下午11:55
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>c标签</title>
</head>
<body>
<h1>c标签</h1>
<hr>
<%--显示数据--%>
<c:out value="JSTL的核心标签"/>
<hr>
<%--保存数据--%>
<c:set var="name1" value="姬无命" scope="session"/>
<c:set var="name2" value="白展堂"/>
<c:out value="${name1}"/>
<hr>
<%--删除数据--%>
<%--标签用于移除一个变量，可以指定这个变量的作用域，若未指定，则默认为变量第一次出现的作用域。--%>
<c:set var="age" value="22"/>
<c:remove var="name1"/>
删除name变量后的值为：<c:out value="${name1}"/>
<br>
<c:out value="${age}"/>
<hr>
<%--处理产生错误的异常状况，用来储存错误信息的变量--%>
<c:catch var="exception">
    <% int x = 5/0;%>
</c:catch>
<c:if test="${exception != null}">
    异常为：${exception}
    <br>
    发生了异常为：${exception.message}
</c:if>
<hr>
<%--判断表达式的值，如果表达式的值为 true 则执行其主体内容。--%>
<c:if test="${age>18}">
    ${name2}<c:out value="已经是个成年人了！"/>
</c:if>
<hr>
<%--<c:choose>标签与Java switch语句的功能一样，用于在众多选项中做出选择。switch语句中有case，
而<c:choose>标签中对应有<c:when>，switch语句中有default，而<c:choose>标签中有<c:otherwise>。--%>
<c:set var="salary" value="8000"/>
<c:out value="你的工资为：${salary}"/>
<br>
<c:choose>
    <c:when test="${salary>0}&${salary<5000}">
        坚强的活着。
    </c:when>
    <c:when test="${salary>5000}">
        还不错，可以买个自行车了。
    </c:when>
    <c:otherwise>
        也许这就是富二代吧！
    </c:otherwise>
</c:choose>
<hr>
<%--迭代一个集合中的对象--%>
<c:forEach var="i" begin="0" end="5">
    <c:out value="${i}"/></p>
</c:forEach>
<hr>
<%--通过指定分隔符将字符串分隔为一个数组然后迭代它们。--%>
<c:forTokens items="google,safari,firefox" delims="," var="browser">
    <c:out value="${browser}"/></p>
</c:forTokens>
<hr>
<%--可以包含一个FTP服务器中不同的网页内容。--%>
<c:import var="welcome" url="index.jsp"/>
<c:out value="${welcome}"/>
<hr>
<c:import var="baidu" url="https://www.baidu.com/" charEncoding="UTF-8"/>
<c:out value="${baidu}"/>
</body>
</html>
