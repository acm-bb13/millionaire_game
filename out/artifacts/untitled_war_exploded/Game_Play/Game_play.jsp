<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/21
  Time: 23:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="utf-8">
    <title>Title</title>
    <script src="./js/jquery-3.5.1.min.js"></script>
    <link href="./css/Game_Style_1.css" rel="stylesheet" type="text/css"/>

    <script src="./js/Game_Drive_Paint_Play.js"></script>
    <script src="./js/Game_Drive_Paint_Number.js"></script>
    <script src="./js/Game_Drive_Paint_Light_1.js"></script>

    <script src="./js/Game_Drive_Control_1.js"></script>

    <script src="./js/Game_Drive_Move_Speed.js"></script>
</head>

<body style="overflow:hidden">

    <img src="./resource/Game_Background/Game_background_2.jpg"
         style="position:absolute;
         z-index:1;" width="1024" height="600">
<%--display:none--%>
<%--格子贴图--%>
    <c:forEach begin="1" end="8"  var="i">
        <c:forEach begin="1" end="19" var="j">
            <c:if test="${(i==1||j==1||i==8||j==19)}">
                <c:choose>
                    <c:when test="${(i+j)%2==0}">
                        <img src="./resource/Game_Background/Game_background_Grid2.png"
                             style="position:absolute;filter:hue-rotate(70deg);  top:${i*50+100}px; left:${j*50}px; z-index:2"
                             width="50" height="50" class="Grid1"
                            <%--${("Grid"+(i+j)%2)}--%>
                        >
                    </c:when>
                    <c:otherwise>
                        <img src="./resource/Game_Background/Game_background_Grid2.png"
                             style="position:absolute;filter:hue-rotate(70deg);  top:${i*50+100}px; left:${j*50}px; z-index:2"
                             width="50" height="50" class="Grid2"
                            <%--${("Grid"+(i+j)%2)}--%>
                        >
                    </c:otherwise>
                </c:choose>
            </c:if>
        </c:forEach>
    </c:forEach>

<div id="sto" class="white_content">这是一个层窗口示例程序.
    <a href = "javascript:void(0)" onclick = "document.getElementById('sto').style.display='none';document.getElementById('fade').style.display='none'">点这里关闭本窗口</a>
    <br/>
</div>
<div id="planes">
    <img src="./resource/Game_resource/plane/image1924.png" style="display: none ;position:absolute;filter:drop-shadow(20px 150px 0 #ccc); z-index:10;top:250px; left:400px;"  width="149" height="86">
</div>


<%--主角贴图--%>
    <img id="hero" src="./resource/Game_hero/stay/image2267.png" style="position:absolute;transform:rotateY(180deg); top:100px; left:50px; z-index:5" width="80" height="80">
<%--特效贴图--%>
<img id="light_1" src="./resource/light/1/1.jpg" style="position:absolute; top:350px; left:400px; z-index:4 " width="580 " height="510">

<%--骰子贴图--%>
<img id="number" src="./resource/Game_resource/number/image1033.png" style="position:absolute; top:350px; left:400px;filter: drop-shadow(20px 20px 0 #ccc); z-index:20" width="25" height="31">

<%--测试数据，玩家坐标--%>
<div id="test" style="position:absolute; top:600px; left:0px; z-index:5"> 测试数据加载中..........</div>

</body>
</html>
