<%--
  Created by IntelliJ IDEA.
  User: dell pc
  Date: 2020/10/8
  Time: 11:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<center>
    <h2>记账管理</h2>
    <form action="/mohu" method="post">
        <p>类型:<select name="typeId">
            <option value="">不限</option>
            <option value="1">支出</option>
            <option value="2">收入</option>
            <option value="3">转账</option>
            <option value="4">借出</option>
            <option value="5">借入</option>
            <option value="6">还入</option>
            <option value="7">还出</option>
        </select>
        </p>
        <input type="submit" value="搜索">
    </form>
    <span>
    <form action="/add" method="post">
        <input type="submit" value="记账">
    </form>
    </span>
    <table border="1px">
        <tr style="background-color: #AED8E6">
            <td>标题</td>
            <td>记账时间</td>
            <td>类别</td>
            <td>金额</td>
            <td>说明</td>
        </tr>
        <c:forEach items="${bills}" var="list">
            <tr>
                <td>${list.title}</td>
                <td><fmt:formatDate value="${list.billTime}" pattern="yyyy-MM-dd"/></td>
                <td>
                    <c:if test="${list.typeId==1}">
                        支出
                    </c:if>
                    <c:if test="${list.typeId==2}">
                        收入
                    </c:if>
                    <c:if test="${list.typeId==3}">
                        转账
                    </c:if>
                    <c:if test="${list.typeId==4}">
                        借出
                    </c:if>
                    <c:if test="${list.typeId==5}">
                        借入
                    </c:if>
                    <c:if test="${list.typeId==6}">
                        还入
                    </c:if>
                    <c:if test="${list.typeId==7}">
                        换出
                    </c:if>
                </td>
                <td>${list.price}</td>
                <td>${list.explaine}</td>
            </tr>
        </c:forEach>
    </table>
</center>
</body>
</html>
