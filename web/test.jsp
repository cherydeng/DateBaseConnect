<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 2021-04-09
  Time: 19:47
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html;charset=UTF-8" language="java" import ="java.util.*" %>
<%--<!doctype html public --%>
<%@page import="java.sql.*" %>
<%@page import="javax.sql.*" %>
<%@page import="javax.naming.*"%>
<%@page session="false" %>
<meta http-equiv="Content-Type" content="text/html"; charset="gb2312">
<title>连接数据库操作</title>
<table border="1" width="100%" >

    <tr>
        <td width="60" valign="top" class="dh"><div align="center">编号</div></td>

        <td width="60" valign="top" class="dh"><div align="center">书名</div></td>

        <td width="60" valign="top" class="dh"><div align="center">版本</div></td>

        <td width="60" valign="top" class="dh"><div align="center">时间</div></td>

        <td width="60" valign="top" class="dh"><div align="center">价格</div></td>
    </tr>
<%
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/titles"; //数据库名
        String username = "root";  //数据库用户名
        String password = "123456";  //数据库用户密码
        Connection conn = DriverManager.getConnection(url, username, password);  //连接状态
        if (conn != null) {
            System.out.print("数据库连接成功！");
            System.out.print("<br />");
            Statement stmt = null;
            ResultSet rs = null;
            String sql = "SELECT * FROM Books;";  //查询语句
            stmt = conn.createStatement();
            rs = stmt.executeQuery(sql);
            out.print("查询结果");
            out.print("<br />");
//            out.print("ISBN"+"  "+"BookName "+"     "+"price");
            out.print("<br />");
            while (rs.next()) {
%>
    <tr>
        <td width="60" valign="top" class="dh"><div align="center"><span class="style8"><%=rs.getString("ISBN")%> </span></div></td>

        <td width="60" valign="top" class="dh"><div align="center"><span class="style8"><%=rs.getString("BookName")%></span></div></td>

        <td width="60" valign="top"  class="dh"><div align="center"><span class="style8"><%=rs.getString("version")%></span></div></td>

        <td width="60" valign="top" class="dh"><div align="center"><span class="style8"><%=rs.getString("time")%></span></div></td>

        <td width="60" valign="top"  class="dh"><div align="center"><span class="style8"><%=rs.getString("price")%></span></div></td>
    </tr>
    <%
            }
        } else {
            System.out.print("连接失败！");
        }
    }
    catch (Exception e) {
        System.out.print("数据库连接异常！");
    }

%>
</table>