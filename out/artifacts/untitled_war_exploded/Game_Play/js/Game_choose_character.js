//初始化，当js加载时
window.onload = function() {
    //设置主角动画的线程
    heroPaintPlay = setInterval(HeroPaintAction,80);
    //设置游戏tick函数
    setInterval(modTick,80);
    //令主角储存坐标与贴图坐标重合，修复显示异常
    heroObject.x=$('#hero').position().left;
    heroObject.y=$('#hero').position().top;
    heroBei = 2;
    heroMoveSpeed = 20;
}

function modTick() {
    AllMove();
    document.getElementById('test').innerHTML = heroObject.x+"   " + heroObject.y + "   "+ heroObject.mx + "   "+ heroObject.my
    +"   "+heroObject.moveTick;
}

function onclickChoose(n) {
    if(n==1){
        heroObject.mx=3000;
    }
    if(n==2){
        heroObject.mx=-3000;
    }
}