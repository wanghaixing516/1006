<%--
  Created by IntelliJ IDEA.
  User: 张家和
  Date: 2020/10/2
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script type="text/javascript" src="/static/js/jquery-1.8.3.min.js"></script>
</head>
<body>
<center>
    <h2>记账</h2>
    <form method="post" action="/doadd">
        <p>类型：<input type="radio" value="1" name="typeId">支出
            <input type="radio" value="2" name="typeId">收入
            <input type="radio" value="3" name="typeId">转账
            <input type="radio" value="4" name="typeId">借出
            <input type="radio" value="5" name="typeId">借入
            <input type="radio" value="6" name="typeId">还入
            <input type="radio" value="7" name="typeId">还出
        </p>
        <p><input type="hidden" name="id"/></p>
        <p>标题：<input name="title"></p>
        <p>日期：<input name="billTime"></p>
        <p>金额：<input name="price"></p>
        <p>说明：<label><input name="explaine" style="height: 200px"></label></p>
        <p><input type="reset" value="重置"><input type="submit" value="保存"><input type="button" value="返回" onclick="javascript:history.go(-1);"/></p>
    </form>
</center>
</body>
</html>
<script type="text/javascript">
    $("form").submit(function(){
        var reg=/^\d{4}-\d{2}-\d{2}$/;
        var billTime=$("[name='billTime']").val();
        if(reg.test($("[name='billTime']").val())==false){
            alert("日期格式不正确");
            return false;
        }

        var price=$("[name='price']").val();
        if(price.length==0){
            alert("金额必须大于0！");
            return false;
        }else if(price<=0){
            alert("金额必须大于0！");
            return false;
        }
       /* var reg2=/^\d+(\.{0,1}\d+){0,1}$/
        if(reg2.test($("[name='price']").val())==false){
            alert("金额必须大于0！");
            return false;
        }*/
        var explaine=$("[name='explaine']").val();
        if(explaine.val().length>250){
            alert("长度不能超过250个字符！");
            return false;
        }
        return true;
    })


</script>
