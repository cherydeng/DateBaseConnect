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
    <title>��Ʒ��ѯҳ��</title>
  </head>
  <body bgcolor="white">
  <center>
    <font size="6" face="��Բ"><b>��ѯ��Ʒ</b></font>
    <form action="PageShow.jsp" method="get" >
      <br><br><br>
      ��ѡ��Ҫ��ѯ������
      <select name ="mm" size="" >
        <option value="name">����</option>
        <option value="maker">������</option>
        <option value="model">���</option>
      </select>
      &nbsp;
      ����ؼ���<input type="text" name="key" value="" size="15">
      <%
        request.getParameter("mm");
        request.getParameter("key");
      %>
      <input type="submit" value="��ѯ">

    </form>
  </center>
  </body>
</html>
