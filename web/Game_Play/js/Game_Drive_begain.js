
//初始化，当js加载时
window.onload = function() {
    //设置主角动画的线程
    heroPaintPlay = setInterval(HeroPaintAction,80);
    //设置总移动环境
    // setInterval(AllMove,80);该函数调用已加入游戏tick里调用
    //设置骰子动画线程
    numberPaintPlay = setInterval(NumberPaintPlayRun , 80);
    //设置游戏tick函数
    setInterval(modTick,80);
    //设置特效动画线程
    LightPaintPlay= setInterval(LightPaintPlayRun,80);
    //令主角储存坐标与贴图坐标重合，修复显示异常
    heroObject.x=$('#hero').position().left;
    heroObject.y=$('#hero').position().top;
}


function Game_Begin_Start() {

}

var controlBoolean=true;
var grid360Back=0;
function modTick(){
    grid360Back+=10;
    if(grid360Back>=360)grid360Back=0;
    $('.Grid1').css("filter","hue-rotate("+grid360Back+"deg)");
    $('.Grid2').css("filter","hue-rotate("+(grid360Back+90)+"deg)");
    // $('.Grid2').css("filter","hue-rotate("+(grid360Back+180)+"deg)");
    // $('.Grid1').style.filter="hue-rotate("+(grid360Back+180)+"deg)";

    AllMove();
    if(heroObject.x % 50==0&&heroObject.y%50==0&&!heroObject.play_mode){
        if(!heroObject.moveTick){
            heroObject.mx=0;
            heroObject.my=0;
            controlBoolean=false;
            heroObject.play_mode=3;
        }else {
            controlBoolean=true;
            heroObject.moveTick--;
        }
    }
    if(controlBoolean){
        if(heroObject.y<=100&&heroObject.x<950){
            heroObject.mx=50;
            heroObject.my=0;
        }else if(heroObject.x>=950&&heroObject.y<450){
            heroObject.mx=0;
            heroObject.my=50;
        }else if(heroObject.y>=450&&heroObject.x>50){
            heroObject.mx=-50;
            heroObject.my=0;
        }else if(heroObject.x>=50&&heroObject.y>100){
            heroObject.mx=0;
            heroObject.my=-50;
        }
    }else {
        heroObject.mx=0;
        heroObject.my=0;
    }
}