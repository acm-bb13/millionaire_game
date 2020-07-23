<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2020/7/23 0023
  Time: 09:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%--加入jq--%>
    <script src="./js/jquery-3.5.1.min.js"></script>
    <%--加入css--%>
    <link rel="stylesheet" href="./css/Game_choose_character.css">
    <%--加入玩家动画--%>
    <script src="./js/Game_Drive_Paint_Play.js"></script>
    <%--加入物理移动--%>
    <script src="./js/Game_Drive_Move_Speed.js"></script>
    <%--加入本网页的js--%>
    <script src="./js/Game_choose_character.js"></script>
</head>
<body style="overflow:hidden">
    <script src="./js/Game_Drive_Move_Speed.js"></script>

    <%--背景图片--%>
    <img src="./resource/Game_Background/Game_background_4.jpg"
         style="position:absolute;
             z-index:1;" width="1024" height="600">

    <%--人物--%>
    <img id="hero" src="./resource/Game_hero/stay/image2267.png" style="position:absolute;transform:rotateY(180deg); top:100px; left:450px; z-index:5" width="90" height="190">



    <%--信息窗口--%>
    <div id="Message" class="Message_content" style="position: absolute;top:300px ; left: 300px ; z-index: 4;background:#FFF ; height: 250px;width: 400px" >
        <span id="yh">人物存档信息</span>
        <table id="Message_objdect">
            <tr>
                <td class="left">点击上方小人选择人物</td>
            </tr>
            <tr>
                <td class="left">人物名称：</td>
                <td class="center"><span class="user_name_">
                <%--人物名称--%>
                正在读取....
            </span></td>
            </tr>
            <tr>
                <td class="left">健康值：</td>
                <td class="center"><span class="user_login_">
                <%--健康值--%>
                正在读取....
            </span></td>
            </tr>
            <tr>
                <td class="left">金币数量：</td>
                <td class="center"><span class="experience_"></span>正在读取....</td>
            </tr>
            <tr>
                <td class="left">最后保存日期：</td>
                <td class="center"><span class="experience_"></span>正在读取....</td>
            </tr>
            <tr>
                <td class="left">创建日期：</td>
                <td class="center"><span class="experience_"></span>正在读取....</td>
            </tr>
            <tr>
                <td class="left"> <button onclick="onclickChoose(1)">上一个人物存档</button></td>
                <td class="right"><button onclick="onclickChoose(2)">下一个人物存档</button></td>
            </tr>
        </table>
    </div>

    <%--测试数据，玩家坐标--%>
    <div id="test" style="position:absolute; top:600px; left:0px; z-index:5"> 测试数据加载中..........</div>
</body>
</html>
