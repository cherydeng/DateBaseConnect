<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 2021-04-09
  Time: 22:11
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import ="java.util.*" import="java.sql.*" pageEncoding="gb2312" %>
<html>
  <head>
    <title>商品查询页面</title>
  </head>
  <body bgcolor="white">
  <center>
    <font size="6" face="幼圆"><b>查询商品</b></font>
    <form action="PageShow.jsp" method="get" >
      <br><br><br>
      请选择要查询的类型
      <select name ="mm" size="" >
        <option value="name">名称</option>
        <option value="maker">制造商</option>
        <option value="model">规格</option>
      </select>
      &nbsp;
      输入关键字<input type="text" name="key" value="" size="15">
      <%
        request.getParameter("mm");
        request.getParameter("key");
      %>
      <input type="submit" value="查询">

    </form>
  </center>
  </body>
</html>
