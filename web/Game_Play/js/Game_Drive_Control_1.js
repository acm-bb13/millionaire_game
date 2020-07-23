


//键盘控制
document.onkeydown = function(e){
    switch (e.keyCode) {
        //左
        case 37 :
            heroObject.mx=-10;

            break;
        //上
        case 38 :
            heroObject.my=-10;

            break;
        //右
        case 39 :
            heroObject.mx=10;

            break;
        //下
        case 40 :
            heroObject.my=10;

            break;
        //空格
        case 32 :
            // controlBoolean=!controlBoolean;


            heroObject.moveTick=parseInt(Math.random()*6+1);
            numberAim = heroObject.moveTick;
            numberTick = 30;
            break;

    }
}
