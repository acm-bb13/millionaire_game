<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/19 0019
  Time: 09:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="forumInsert">
        <input type="text" placeholder="请输入标题" name="title">
        <br/>

        <textarea cols="20" rows="10" id="dialog-from-value" name="content">

        </textarea>
        <script>
            document.getElementById("dialog-from-value").value("1111111111111");
        </script>
        <br/>
        <input type="submit" value="提交">
        <%=request.getAttribute("u_err")== null ? "" : request.getAttribute("u_err") %>
    </form>
</body>
</html>
