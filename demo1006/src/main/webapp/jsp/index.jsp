<%--
  Created by IntelliJ IDEA.
  User: 王海兴
  Date: 2020/10/6
  Time: 21:00
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px black solid" style="text-align: center; margin: auto;">
    <tr>
        <td colspan="5">记账管理</td>
    </tr>
    <tr>
        <form action="/">
            <td>类别</td>
            <td><select name="typeId">
                <c:forEach items="${types}" var="t">
                    <option value="${t.id}">${t.name}</option>
                </c:forEach>
            </select></td>
            <td>时间：从</td>
            <td><input type="text" name="cbillTime"></td>
            <td>到<input type="text" name="dbillTime" id=""></td>
            <td>
                <input type="submit" value="搜索">
            </td>
            <td>
                <button><a href="/toAdd">记账</a></button>
            </td>
        </form>
    </tr>
    <tr>
        <th>标题</th>
        <th>记账时间</th>
        <th>类别</th>
        <th>金额</th>
        <th>说明</th>
    </tr>
    <c:forEach var="b" items="${bills}">
        <tr>
            <td>
                    ${b.title}
            </td>
            <td>
                    ${b.billTime}
            </td>
            <td>
                    ${b.typeName}
            </td>
            <td>
                    ${b.price}
            </td>
            <td>
                    ${b.explain}
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
