<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/19 0019
  Time: 08:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

    <form action="Login_register" method="post">
        <input type="text"  placeholder="请输入用户名" name="user_login" value="admin">
        <%=request.getAttribute("u_err")== null ? "" : request.getAttribute("u_err") %>
        <br/>
        <input type="password"  placeholder="请输入密码"  name="pass_word">
        <%=request.getAttribute("p_err") == null ? "" : request.getAttribute("p_err") %>
        <br/>
        <input type="submit"/>
        <input type="reset"/>
        <%=request.getAttribute("p_login") == null ? "" : request.getAttribute("p_login") %>
    </form>
</body>
</html>
