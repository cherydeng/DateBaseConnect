<%--
  Created by IntelliJ IDEA.
  User: macbook
  Date: 2021-04-10
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import ="java.util.*" import="java.sql.*" pageEncoding="GB2312" %>
<html>
<head>
    <title>商品界面</title>
</head>
<body bgcolor="white">
<center>
    <table width="600" border="2" cellspacing="0" cellpadding="0" height="10">
        <tr>
            <td width="120" height="10" align="center">商品名称</td>

            <td width="120" height="30" align="center">商品类型</td>

            <td width="120" height="30" align="center">商品价格</td>

            <td width="120" height="30" align="center">商品数量</td>

            <td width="120" height="30" align="center">制造商</td>
        </tr>
        <%
            String key = request.getParameter("key");
            String key1 = request.getParameter("mm");
            System.out.println("第二个属性是");
            System.out.println(key1);
            System.out.println("第一个属性是");
            System.out.println(key);
            int PageSize = 5;
            int RecordCount;
            int PageCount;
            int Page = 1;
            int i;
            String SPage = request.getParameter("page");
            if(SPage == null){
                Page = 1;
            }
            else {
                Page = java.lang.Integer.parseInt(SPage);
                if(Page < 1)
                    Page = 1;
            }
                String sql = "SELECT * FROM vote WHERE " + key1 + " LIKE '%" + key + "%'";
                Class.forName("org.gjt.mm.mysql.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/Goods","root","123456");
                Statement stmt = con.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE,ResultSet.CONCUR_READ_ONLY);
                ResultSet rs = stmt.executeQuery(sql);
                rs.last();
                RecordCount = rs.getRow();
                PageCount = (int)(RecordCount+PageSize-1)/PageSize;
                if(Page > PageCount)
                    Page = PageCount;

                System.out.println("总页码是");
                System.out.println(PageCount);
                System.out.println("当前页码是");
                System.out.println(Page);
                if(PageCount > 0){
                    rs.absolute((Page-1) * PageSize+1);
                    i = 0;
                    while (i < PageSize && !rs.isAfterLast()){
                        %>
        <tr>
            <td width="120" height="10" align="center"><%=rs.getString("name")%></td>

            <td width="120" height="10" align="center"><%=rs.getString("model") %></td>

            <td width="120" height="10" align="center"><%=rs.getFloat("price") %></td>

            <td width="120" height="10" align="center"><%=rs.getInt("number") %></td>

            <td width="120" height="10" align="center"><%=rs.getString("maker") %></td>
        </tr>
        <%
            rs.next();
            i++;
            }
            }
        %>
    </table>
    <hr>
    <h5>
        <div align="center">
            第<%=Page %>页   共<%=PageCount %>页
            <%
                if(Page < PageCount){
                    %>

                    <a href="PageShow.jsp?page=<%=Page+1%>">下一页</a>
                    <%
//                        request.getParameter("key");
//                        request.getParameter("mm");
                    }
                if(Page > 1){
                    %>
                    <a href="PageShow.jsp?page=<%=Page-1%>">上一页</a>

                    <%
                    }
                    %>
        </div>
    </h5>


</center>
</body>
</html>
