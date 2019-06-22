<template>
  <div class="content-foot w1180">
    <!-- 黄页广告、特色服务 -->
    <div class="characteristic">
      <div class="title"><a href="javescript:;">郑州特色专区|服务大全>></a></div>
      <ul class="huangye" @mouseenter="huangYeHid" @mouseleave="huangYeBlock">
        <li>
          <a class="bu1" href="javascript:;">家政</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">搬家</a>
            <a href="javascript:;">保姆</a>
            <a href="javascript:;">保洁</a>
            <a href="javascript:;">回收</a>
            <a href="javascript:;">干洗</a>
            <a href="javascript:;">通管道</a>
            <a href="javascript:;">修电脑</a>
            <a href="javascript:;">修家电</a>
          </div>
        </li>
        <li>
          <a class="bu2" href="javascript:;">婚庆</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">婚庆</a>
            <a href="javascript:;">司仪</a>
            <a href="javascript:;">摄影</a>
            <a href="javascript:;">婚车</a>
            <a href="javascript:;">庆典</a>
            <a href="javascript:;">结婚攻略</a>
            <a href="javascript:;">婚庆公司</a>
            <a href="javascript:;">婚庆用品</a>
          </div>
        </li>
        <li>
          <a class="bu3" href="javascript:;">装修</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">建材</a>
            <a href="javascript:;">家居</a>
            <a href="javascript:;">家饰</a>
            <a href="javascript:;">家装</a>
            <a href="javascript:;">工装</a>
            <a href="javascript:;">建房</a>
            <a href="javascript:;">装修图库</a>
            <a href="javascript:;">装修指南</a>
          </div>
        </li>
        <li>
          <a class="bu4" href="javascript:;">汽车</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">租车</a>
            <a href="javascript:;">驾校</a>
            <a href="javascript:;">代驾</a>
            <a href="javascript:;">陪练</a>
            <a href="javascript:;">4S店</a>
            <a href="javascript:;">过户</a>
            <a href="javascript:;">改装</a>
            <a href="javascript:;">汽车装饰</a>
          </div>
        </li>
        <li>
          <a class="bu5" href="javascript:;">休闲</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">户外</a>
            <a href="javascript:;">KTV</a>
            <a href="javascript:;">健身</a>
            <a href="javascript:;">酒吧</a>
            <a href="javascript:;">洗浴</a>
            <a href="javascript:;">按摩</a>
            <a href="javascript:;">电影院</a>
            <a href="javascript:;">台球厅</a>
          </div>
        </li>
        <li>
          <a class="bu6" href="javascript:;">商务</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">设计</a>
            <a href="javascript:;">物流</a>
            <a href="javascript:;">财务</a>
            <a href="javascript:;">法律咨询</a>
            <a href="javascript:;">工商注册</a>
            <a href="javascript:;">网站建设</a>
            <a href="javascript:;">印刷包装</a>
            <a href="javascript:;">投资担保</a>
          </div>
        </li>
        <li>
          <a class="bu7" href="javascript:;">旅游</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">机票</a>
            <a href="javascript:;">租车</a>
            <a href="javascript:;">团购</a>
            <a href="javascript:;">短租</a>
            <a href="javascript:;">周边游</a>
            <a href="javascript:;">国内游</a>
            <a href="javascript:;">出境游</a>
            <a href="javascript:;">旅行社</a>
          </div>
        </li>
        <li>
          <a class="bu8" href="javascript:;">医疗</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">药品</a>
            <a href="javascript:;">中医</a>
            <a href="javascript:;">美容</a>
            <a href="javascript:;">挂号</a>
            <a href="javascript:;">器械</a>
            <a href="javascript:;">差疾病</a>
            <a href="javascript:;">找医院</a>
            <a href="javascript:;">五官科</a>
          </div>
        </li>
        <li>
          <a class="bu9" href="javascript:;">餐饮</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">外卖</a>
            <a href="javascript:;">美食</a>
            <a href="javascript:;">蛋糕</a>
            <a href="javascript:;">餐普</a>
            <a href="javascript:;">快餐</a>
            <a href="javascript:;">宴会餐</a>
            <a href="javascript:;">热门团购</a>
            <a href="javascript:;">中餐外卖</a>
          </div>
        </li>
        <li>
          <a class="bu10" href="javascript:;">教育</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">IT培训</a>
            <a href="javascript:;">家教个人</a>
            <a href="javascript:;">家教机构</a>
            <a href="javascript:;">语言培训</a>
            <a href="javascript:;">职业技能</a>
            <a href="javascript:;">学历教育</a>
            <a href="javascript:;">艺术培训</a>
            <a href="javascript:;">体育培训</a>
          </div>
        </li>
        <li>
          <a class="bu11" href="javascript:;">加盟</a>
          <div :class="ishidden==true?'hid':''">
            <a href="javascript:;">餐饮加盟</a>
            <a href="javascript:;">服装鞋包</a>
            <a href="javascript:;">建材加盟</a>
            <a href="javascript:;">特色加盟</a>
            <a href="javascript:;">汽车服务</a>
            <a href="javascript:;">家居环保</a>
            <a href="javascript:;">教育母婴</a>
            <a href="javascript:;">更多相关</a>
          </div>
        </li>
      </ul>
    </div>
    <!-- 黄页广告 其他服务 -->
    <div class="yellowpage">
      <ul class="page-list">
        <li>
          <a href="javascript:;">
            <img src="../assets/content-foot/car200_901.jpg" alt="">
            <span>优质好车</span>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="../assets/content-foot/houseworking200_906.jpg" alt="">
            <span>家政全包</span>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="../assets/content-foot/work200_904.jpg" alt="">
            <span>全网热招</span>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="../assets/content-foot/house200_903.jpg" alt="">
            <span>优质房源</span>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="../assets/content-foot/houseworking200_905.jpg" alt="">
            <span>搬家无忧</span>
          </a>
        </li>
        <li>
          <a href="javascript:;">
            <img src="../assets/content-foot/used200_903.jpg" alt="">
            <span>二手好货</span>
          </a>
        </li>
      </ul>
    </div>
    <!-- 房屋信息 -->
    <div class="house-msg">
      <a id="loupan" class="msg-title" :class="msgIsHid.loupan==true?'hover':''" href="javascript:;" @mouseenter="loupan">新楼盘大全</a>
      <a id="ershouf" class="msg-title" :class="msgIsHid.ershouf==true?'hover':''" href="javascript:;" @mouseenter="ershouf">二手房小区大全</a>
      <a id="fangchan1" class="msg-title" :class="msgIsHid.fangchan1==true?'hover':''" href="javascript:;" @mouseenter="fangchan1">热门房产网</a>
      <a id="fangjia" class="msg-title" :class="msgIsHid.fangjia==true?'hover':''" href="javascript:;" @mouseenter="fangjia">热门房价</a>
      <a id="xinfang" class="msg-title" :class="msgIsHid.xinfang==true?'hover':''" href="javascript:;" @mouseenter="xinfang">热门新房</a>
      <a id="fangchan2" class="msg-title" :class="msgIsHid.fangchan2==true?'hover':''" href="javascript:;" @mouseenter="fangchan2">热门房产</a>
      <a id="cityer" class="msg-title" :class="msgIsHid.cityer==true?'hover':''" href="javascript:;"   @mouseenter="cityer">相关城市二手房</a>
      <a id="zufang" class="msg-title" :class="msgIsHid.zufang==true?'hover':''" href="javascript:;" @mouseenter="zufang">相关城市租房</a>
      <span>&nbsp;&nbsp;</span>
      <div id="msg" class="clearfix">
        <!-- 新房楼盘大全 -->
        <ul id="loupan-msg" :class="msgIsHid.loupan==true?'zIndex':''" class="loupan-list">
          <li><a href="javascript:;">绿都元正·望晴川</a></li>
          <li><a href="javascript:;">碧桂园山河郡</a></li>
          <li><a href="javascript:;">锦艺四季城</a></li>
          <li><a href="javascript:;">碧桂园双湖城</a></li>
          <li><a href="javascript:;">融创空港宸院</a></li>
          <li><a href="javascript:;">永威南樾</a></li>
          <li><a href="javascript:;">锦艺金水湾</a></li>
          <li><a href="javascript:;">瀚海尔湾</a></li>
          <li><a href="javascript:;">保利海德公园</a></li>
          <li><a href="javascript:;">泰宏建业国际公寓</a></li>
          <li><a href="javascript:;">万科民安江山府</a></li>
          <li><a href="javascript:;">腾威城</a></li>
          <li><a href="javascript:;">御品蔚来云城</a></li>
          <li><a href="javascript:;">紫荆半岛东郡</a></li>
          <li><a href="javascript:;">英协生生银河居</a></li>
          <li><a href="javascript:;">绿都东澜岸</a></li>
          <li><a href="javascript:;">亚星金运外滩</a></li>
          <li><a href="javascript:;">恒大养生谷</a></li>
          <li><a href="javascript:;">华南城·盛世广场</a></li>
          <li><a href="javascript:;">瀚海思念城</a></li>
          <li><a href="javascript:;">锦雍水之郡</a></li>
          <li><a href="javascript:;">郑州孔雀城</a></li>
          <li><a href="javascript:;">朗悦公园府</a></li>
          <li><a href="javascript:;">万向桃源居</a></li>
          <li><a href="javascript:;">郑北孔雀城</a></li>
          <li><a href="javascript:;">亚星盛世云水居</a></li>
          <li><a href="javascript:;">康桥那云溪</a></li>
          <li><a href="javascript:;">永威溪樾</a></li>
          <li><a href="javascript:;">郑州孔雀城公园海</a></li>
          <li><a href="javascript:;">泷悦华庭</a></li>
        </ul>
         <!-- 二手房小区大全 -->
        <ul id="ershouf-msg" class="loupan-list clearfix" :class="msgIsHid.ershouf==true?'zIndex':''">
          <li><a href="javascript:;">思念果岭国际社区</a></li>
          <li><a href="javascript:;">远大理想城</a></li>
          <li><a href="javascript:;">绿都澜湾</a></li>
          <li><a href="javascript:;">恒大绿洲</a></li>
          <li><a href="javascript:;">绿地城</a></li>
          <li><a href="javascript:;">建业天筑</a></li>
          <li><a href="javascript:;">鑫苑名家</a></li>
          <li><a href="javascript:;">正商金域世家</a></li>
          <li><a href="javascript:;">盛润锦绣城</a></li>
          <li><a href="javascript:;">亚星盛世家园</a></li>
          <li><a href="javascript:;">华润悦府</a></li>
          <li><a href="javascript:;">祝福红城</a></li>
          <li><a href="javascript:;">康桥九溪郡</a></li>
          <li><a href="javascript:;">正商红河谷</a></li>
          <li><a href="javascript:;">雅居乐国际花园</a></li>
          <li><a href="javascript:;">非常国际</a></li>
          <li><a href="javascript:;">金地格林小城</a></li>
          <li><a href="javascript:;">普罗旺世理想国</a></li>
          <li><a href="javascript:;">永威迎宾府</a></li>
          <li><a href="javascript:;">上东城</a></li>
          <li><a href="javascript:;">家天下</a></li>
          <li><a href="javascript:;">浩创梧桐印象</a></li>
          <li><a href="javascript:;">宏光合园</a></li>
          <li><a href="javascript:;">正弘澜庭叙</a></li>
          <li><a href="javascript:;">君悦城</a></li>
          <li><a href="javascript:;">康桥香溪郡</a></li>
          <li><a href="javascript:;">万科美景龙堂</a></li>
          <li><a href="javascript:;">建业海马九如府</a></li>
          <li><a href="javascript:;">普罗旺世龙之梦</a></li>
          <li><a href="javascript:;">民安北郡</a></li> 
        </ul>
        <!-- 热门房产网 -->
        <ul id="fangchan1-msg" class="loupan-list clearfix" :class="msgIsHid.fangchan1==true?'zIndex':''">
          <li><a href="javascript:;">上海房产网</a></li>
          <li><a href="javascript:;">青岛房产网</a></li>
          <li><a href="javascript:;">南京房产网</a></li>
          <li><a href="javascript:;">成都房产网</a></li>
          <li><a href="javascript:;">天津房产网</a></li>
          <li><a href="javascript:;">大连房产网</a></li>
          <li><a href="javascript:;">广州房产网</a></li>
          <li><a href="javascript:;">杭州房产网</a></li>
          <li><a href="javascript:;">深圳房产网</a></li>
          <li><a href="javascript:;">武汉房产网</a></li>
          <li><a href="javascript:;">苏州房产网</a></li>
          <li><a href="javascript:;">重庆房产网</a></li>
          <li><a href="javascript:;">佛山房产网</a></li>
          <li><a href="javascript:;">石家庄房产网</a></li>
          <li><a href="javascript:;">无锡房产网</a></li>
          <li><a href="javascript:;">三亚房产网</a></li>
          <li><a href="javascript:;">东莞房产网</a></li>
          <li><a href="javascript:;">长沙房产网</a></li>
          <li><a href="javascript:;">北京房产网</a></li>
          <li><a href="javascript:;">厦门房产网</a></li>
          <li><a href="javascript:;">惠州房产网</a></li>
          <li><a href="javascript:;">珠海房产网</a></li>
          <li><a href="javascript:;">济南房产网</a></li>
          <li><a href="javascript:;">太原房产网</a></li>
          <li><a href="javascript:;">海口房产网</a></li>
          <li><a href="javascript:;">沈阳房产网</a></li>
          <li><a href="javascript:;">西安房产网</a></li>
          <li><a href="javascript:;">郑州房产网</a></li>
          <li><a href="javascript:;">合肥房产网</a></li>
          <li><a href="javascript:;">昆山房产网</a></li>
          <li><a href="javascript:;">哈尔滨房产网</a></li>
          <li><a href="javascript:;">福州房产网</a></li>
          <li><a href="javascript:;">昆明房产网</a></li>
          <li><a href="javascript:;">长春房产网</a></li>
          <li><a href="javascript:;">南昌房产网</a></li>
        </ul>
        <!-- 热门房价 -->
        <ul id="fangjia-msg" class="loupan-list clearfix" :class="msgIsHid.fangjia==true?'zIndex':''">
          <li><a href="javascript:;">上海房价</a></li>
          <li><a href="javascript:;">青岛房价</a></li>
          <li><a href="javascript:;">南京房价</a></li>
          <li><a href="javascript:;">成都房价</a></li>
          <li><a href="javascript:;">天津房价</a></li>
          <li><a href="javascript:;">大连房价</a></li>
          <li><a href="javascript:;">广州房价</a></li>
          <li><a href="javascript:;">杭州房价</a></li>
          <li><a href="javascript:;">深圳房价</a></li>
          <li><a href="javascript:;">武汉房价</a></li>
          <li><a href="javascript:;">苏州房价</a></li>
          <li><a href="javascript:;">重庆房价</a></li>
          <li><a href="javascript:;">佛山房价</a></li>
          <li><a href="javascript:;">石家庄房价</a></li>
          <li><a href="javascript:;">无锡房价</a></li>
          <li><a href="javascript:;">三亚房价</a></li>
          <li><a href="javascript:;">东莞房价</a></li>
          <li><a href="javascript:;">长沙房价</a></li>
          <li><a href="javascript:;">北京房价</a></li>
          <li><a href="javascript:;">厦门房价</a></li>
          <li><a href="javascript:;">惠州房价</a></li>
          <li><a href="javascript:;">珠海房价</a></li>
          <li><a href="javascript:;">济南房价</a></li>
          <li><a href="javascript:;">太原房价</a></li>
          <li><a href="javascript:;">海口房价</a></li>
          <li><a href="javascript:;">沈阳房价</a></li>
          <li><a href="javascript:;">西安房价</a></li>
          <li><a href="javascript:;">郑州房价</a></li>
          <li><a href="javascript:;">合肥房价</a></li>
          <li><a href="javascript:;">昆山房价</a></li>
          <li><a href="javascript:;">哈尔滨房价</a></li>
          <li><a href="javascript:;">福州房价</a></li>
          <li><a href="javascript:;">昆明房价</a></li>
          <li><a href="javascript:;">长春房价</a></li>
          <li><a href="javascript:;">南昌房价</a></li>
        </ul>
        <!-- 热门新房 -->
        <ul id="xinfang-msg" class="loupan-list clearfix" :class="msgIsHid.xinfang==true?'zIndex':''">
          <li><a href="javascript:;">上海新房</a></li>
          <li><a href="javascript:;">青岛新房</a></li>
          <li><a href="javascript:;">南京新房</a></li>
          <li><a href="javascript:;">成都新房</a></li>
          <li><a href="javascript:;">天津新房</a></li>
          <li><a href="javascript:;">大连新房</a></li>
          <li><a href="javascript:;">广州新房</a></li>
          <li><a href="javascript:;">杭州新房</a></li>
          <li><a href="javascript:;">深圳新房</a></li>
          <li><a href="javascript:;">武汉新房</a></li>
          <li><a href="javascript:;">苏州新房</a></li>
          <li><a href="javascript:;">重庆新房</a></li>
          <li><a href="javascript:;">佛山新房</a></li>
          <li><a href="javascript:;">石家庄新房</a></li>
          <li><a href="javascript:;">无锡新房</a></li>
          <li><a href="javascript:;">三亚新房</a></li>
          <li><a href="javascript:;">东莞新房</a></li>
          <li><a href="javascript:;">长沙新房</a></li>
          <li><a href="javascript:;">北京新房</a></li>
          <li><a href="javascript:;">厦门新房</a></li>
          <li><a href="javascript:;">惠州新房</a></li>
          <li><a href="javascript:;">珠海新房</a></li>
          <li><a href="javascript:;">济南新房</a></li>
          <li><a href="javascript:;">太原新房</a></li>
          <li><a href="javascript:;">海口新房</a></li>
          <li><a href="javascript:;">沈阳新房</a></li>
          <li><a href="javascript:;">西安新房</a></li>
          <li><a href="javascript:;">郑州新房</a></li>
          <li><a href="javascript:;">合肥新房</a></li>
          <li><a href="javascript:;">昆山新房</a></li>
          <li><a href="javascript:;">哈尔滨新房</a></li>
          <li><a href="javascript:;">福州新房</a></li>
          <li><a href="javascript:;">昆明新房</a></li>
          <li><a href="javascript:;">长春新房</a></li>
          <li><a href="javascript:;">南昌新房</a></li>
        </ul>
        <!-- 热门房产 -->
        <ul id="fangchan2-msg" class="loupan-list clearfix" :class="msgIsHid.fangchan2==true?'zIndex':''">
          <li><a href="javascript:;">上海房产网</a></li>
          <li><a href="javascript:;">青岛房产网</a></li>
          <li><a href="javascript:;">南京房产网</a></li>
          <li><a href="javascript:;">成都房产网</a></li>
          <li><a href="javascript:;">天津房产网</a></li>
          <li><a href="javascript:;">大连房产网</a></li>
          <li><a href="javascript:;">广州房产网</a></li>
          <li><a href="javascript:;">杭州房产网</a></li>
          <li><a href="javascript:;">深圳房产网</a></li>
          <li><a href="javascript:;">武汉房产网</a></li>
          <li><a href="javascript:;">苏州房产网</a></li>
          <li><a href="javascript:;">重庆房产网</a></li>
          <li><a href="javascript:;">佛山房产网</a></li>
          <li><a href="javascript:;">石家庄房产网</a></li>
          <li><a href="javascript:;">无锡房产网</a></li>
          <li><a href="javascript:;">三亚房产网</a></li>
          <li><a href="javascript:;">东莞房产网</a></li>
          <li><a href="javascript:;">长沙房产网</a></li>
          <li><a href="javascript:;">北京房产网</a></li>
          <li><a href="javascript:;">厦门房产网</a></li>
          <li><a href="javascript:;">惠州房产网</a></li>
          <li><a href="javascript:;">珠海房产网</a></li>
          <li><a href="javascript:;">济南房产网</a></li>
          <li><a href="javascript:;">太原房产网</a></li>
          <li><a href="javascript:;">海口房产网</a></li>
          <li><a href="javascript:;">沈阳房产网</a></li>
          <li><a href="javascript:;">西安房产网</a></li>
          <li><a href="javascript:;">郑州房产网</a></li>
          <li><a href="javascript:;">合肥房产网</a></li>
          <li><a href="javascript:;">昆山房产网</a></li>
          <li><a href="javascript:;">哈尔滨房产网</a></li>
          <li><a href="javascript:;">福州房产网</a></li>
          <li><a href="javascript:;">昆明房产网</a></li>
          <li><a href="javascript:;">长春房产网</a></li>
          <li><a href="javascript:;">南昌房产网</a></li>
        </ul>
        <!-- 相关城市二手房 -->
        <ul id="cityer-msg" class="loupan-list clearfix" :class="msgIsHid.cityer==true?'zIndex':''">
          <li><a href="javascript:;">上海二手房</a></li>
          <li><a href="javascript:;">青岛二手房</a></li>
          <li><a href="javascript:;">南京二手房</a></li>
          <li><a href="javascript:;">成都二手房</a></li>
          <li><a href="javascript:;">天津二手房</a></li>
          <li><a href="javascript:;">大连二手房</a></li>
          <li><a href="javascript:;">广州二手房</a></li>
          <li><a href="javascript:;">杭州二手房</a></li>
          <li><a href="javascript:;">深圳二手房</a></li>
          <li><a href="javascript:;">武汉二手房</a></li>
          <li><a href="javascript:;">苏州二手房</a></li>
          <li><a href="javascript:;">重庆二手房</a></li>
          <li><a href="javascript:;">佛山二手房</a></li>
          <li><a href="javascript:;">长沙二手房</a></li>
          <li><a href="javascript:;">北京二手房</a></li>
          <li><a href="javascript:;">厦门二手房</a></li>
          <li><a href="javascript:;">惠州二手房</a></li>
          <li><a href="javascript:;">珠海二手房</a></li>
          <li><a href="javascript:;">济南二手房</a></li>
          <li><a href="javascript:;">太原二手房</a></li>
          <li><a href="javascript:;">郑州二手房</a></li>
        </ul>
        <!-- 相关城市租房 -->
        <ul id="zufang-msg" class="loupan-list clearfix" :class="msgIsHid.zufang==true?'zIndex':''">
          <li><a href="javascript:;">上海租房</a></li>
          <li><a href="javascript:;">青岛租房</a></li>
          <li><a href="javascript:;">南京租房</a></li>
          <li><a href="javascript:;">成都租房</a></li>
          <li><a href="javascript:;">天津租房</a></li>
          <li><a href="javascript:;">大连租房</a></li>
          <li><a href="javascript:;">广州租房</a></li>
          <li><a href="javascript:;">杭州租房</a></li>
          <li><a href="javascript:;">深圳租房</a></li>
          <li><a href="javascript:;">武汉租房</a></li>
          <li><a href="javascript:;">苏州租房</a></li>
          <li><a href="javascript:;">重庆租房</a></li>
          <li><a href="javascript:;">佛山租房</a></li>
          <li><a href="javascript:;">石家庄租房</a></li>
          <li><a href="javascript:;">无锡租房</a></li>
          <li><a href="javascript:;">三亚租房</a></li>
          <li><a href="javascript:;">东莞租房</a></li>
          <li><a href="javascript:;">长沙租房</a></li>
          <li><a href="javascript:;">北京租房</a></li>
          <li><a href="javascript:;">厦门租房</a></li>
          <li><a href="javascript:;">惠州租房</a></li>
          <li><a href="javascript:;">珠海租房</a></li>
          <li><a href="javascript:;">济南租房</a></li>
          <li><a href="javascript:;">太原租房</a></li>
          <li><a href="javascript:;">海口租房</a></li>
          <li><a href="javascript:;">沈阳租房</a></li>
          <li><a href="javascript:;">西安租房</a></li>
          <li><a href="javascript:;">郑州租房</a></li>
        </ul> 
      </div>
      <div class="remencity" :class="msgIsHid.loupan==true || msgIsHid.ershouf==true?'':'opacity' ">
        {{text}}
        <a href="javascript:;">上海</a>
        <a href="javascript:;">北京</a>
        <a href="javascript:;">广州</a>
        <a href="javascript:;">深圳</a>
        <a href="javascript:;">成都</a>
        <a href="javascript:;">南京</a>
        <a href="javascript:;">天津</a>
        <a href="javascript:;">杭州</a>
        <a href="javascript:;">苏州</a>
        <a href="javascript:;">重庆</a>
        <a href="javascript:;">大连</a>
        <a href="javascript:;">武汉</a>
        <a href="javascript:;">济南</a>
        <a href="javascript:;">佛山</a>
        <a href="javascript:;">无锡</a> 
        <a href="javascript:;">更多>></a>
      </div>

    </div>
    <p style="color:#999;margin:30px 80px;">
      安居克郑州房产信息网，为您提供郑州房产中介公司信息，郑州二手房出售、出租信息， 郑州楼盘信息。另有资讯、问答、海外地产等频道，让您找房更轻松。手机版：<a style="color:#666" href="javascript:;">郑州房产网</a> 
    </p>
    <div class="w1180 clearfix" style="background-color:#f9f9f9;padding:10px;">
      <span style="margin-left:30px;">合作伙伴：</span>
      <ul class="loupan-list">
        <li><a href="javascript">邯郸新房</a></li>
        <li><a href="javascript">郑州地图</a></li>
        <li><a href="javascript">郑州公交</a></li>
        <li><a href="javascript">猪头三房产网</a></li>
        <li><a href="javascript">郑州百姓网</a></li>
        <li><a href="javascript">衢州房产</a></li>
        <li><a href="javascript">郑州分类信息网</a></li>
        <li><a href="javascript">郑州二手房</a></li>
        <li><a href="javascript">北京楼盘大全</a></li>
        <li><a href="javascript">洛阳买房</a></li>
        <li><a href="javascript">郑州二手车</a></li>
        <li><a href="javascript">郑州天气预报</a></li>
        <li><a href="javascript">郑州天气</a></li>
        <li><a href="javascript">郑州旅游</a></li>
        <li><a href="javascript">郑州百姓网</a></li>
        <li><a href="javascript">新东方网络课堂</a></li>
        <li><a href="javascript">商告网</a></li>
        <li><a href="javascript">成都分类信息网</a></li>
        <li><a href="javascript">郑州新房</a></li>
        <li><a href="javascript">郑州房产网</a></li>
        <li><a href="javascript">郑州网</a></li>
      </ul>
    </div>
  </div>
</template>

<style scoped>
  /* 公共 样式 */
  .opacity{
    opacity: 0;
  }
  .content-foot{
    margin-top: 30px;
  }
  .hid{
    display: none;
  }
  .zIndex{
    z-index: 1;
  }
  .house-msg div#msg ul a,.remencity>a{
    color: #0041D9;
    width: 100%;
    font-size: 12px;
  }
  .house-msg div#msg ul a:hover,.remencity>a:hover{
    color: orangered;
    text-decoration: underline;
  }
  ul.huangye,.page-list{
    display: flex;
  }
  .characteristic,.yellowpage,.house-msg{
    border: 1px solid #DFDFE0;
    border-radius: 5px;
   }
   .characteristic,.yellowpage{
    margin-bottom: 30px;
  }
  /* 楼盘大全样式 */
  .loupan-list a{
    color: #999;
  }
  .loupan-list a:hover{
    text-decoration:underline;
  }
  .loupan-list li{
    margin: 5px 0 5px 28px !important;
  }
  #msg{
    height: 200px;
    position: relative;
  }
  #msg ul{
    width: 100%;
    height: 100%;
    position: absolute;
    top:0;
    background-color:#fff; 
  }
  #loupan-msg{
    position: relative !important;
    /* z-index:1; */
  }
  .loupan-list>li{
    float: left;
    padding: 0 0 0 5px;
    width: 151px;
    line-height: 24px;
    height: 24px;
    margin-left: 28px;
    margin-top: 10px;
    margin-bottom: 10px;
  }
   /* 房屋信息 样式 */
   .remencity{
    width: 95%;
    margin: 10px auto 0;
    padding: 10px;
    border-top: 1px solid #DFDFE0;
   }
  .remencity>a{
     width: 5%;
     margin-left: 20px;
  }
  .remencity>a:last-child{
    margin-left: 28%;
  }
   .house-msg>span{
    display: inline-block;
    line-height: 27px;
    width: 218px;
    height: 27px;
    border-bottom: 1px solid #ddd;
    background-color: #eefce9;  
   }
   .house-msg{
     border-top: 2px solid #62ab00;
   }
  .msg-title{
    display: inline-block;
    text-align: center;
    line-height: 27px;
    width: 119px;
    height: 27px;
    border-right: 1px solid #ddd;
    border-bottom: 1px solid #ddd;  
    color: #333;
    font-size: 12px;
    background-color: #eefce9;
  }
  
  .hover{
    background-color: #fff !important;
    border-bottom: 0 !important;
    color: #4e8d00 !important;
    font-weight: 700 !important;
  }
  /* 黄页 其他服务样式 */
  .yellowpage{
    overflow: hidden;
  }
  .page-list img{
    width: 180px;
    height: 80px;
    margin-left: 14px;
    margin-top: 10px;
  }
  .page-list span{
    display: block;
    width: 180px;
    height: 16px;
    color: #252525;
    font-style: normal;
    line-height: 16px;
    font-weight: bold;
    text-align: center;
  }
  /* 黄页 特色服务 样式 */

  .title{
    border-left: 7px solid #f78015;
    padding-left: 10px;
    margin-left: 30px;
    margin-top:10px;
  }
  .characteristic>.title>a{
    color: #0041d9;
    font-size: 14px;
    font-weight: 700;
  }
  .characteristic>.title>a:hover{
    color: red;
    text-decoration: underline;
  }
  ul.huangye a:hover{
    color: orangered;
    text-decoration: underline;
  }

  ul.huangye>li{
    width: 10%;
    margin-top: 20px;
  }
  ul.huangye>li:first-child{
    margin-left: 3%;
  }
  ul.huangye>li>a:first-child{
    /* width: 32px; */
    height: 18px;
    padding-top: 45px;
    background: url(../assets/content-foot/huangyelistbg.png) no-repeat;
  }
  a.bu1{background-position: 0% 0% !important;}
  a.bu2{background-position: 10% 0% !important;}
  a.bu3{background-position: 20% 0% !important;}
  a.bu4{background-position: 30% 0% !important;}
  a.bu5{background-position: 40% 0% !important;}
  a.bu6{background-position: 51% 0% !important;}
  a.bu7{background-position: 61% 0% !important;}
  a.bu8{background-position: 71.5% 0% !important;}
  a.bu9{background-position: 81.5% 0% !important;}
  a.bu10{background-position: 91.5% 0% !important;}
  a.bu11{background-position: 102% 0% !important;}
  ul.huangye a{
    width: 50px;
    height: 18px;
    padding-top: 10px;
    margin-bottom: 10px;
    padding-left: 5px;
    font-size: 12px;
    color: #0041D9;
    display: block;
  }
</style>

<script>
  export default {
    data(){
      return {
        ishidden:true,
        msgIsHid:{
          loupan:true,
          ershouf:false,
          fangchan1:false,
          fangjia:false,
          xinfang:false,
          fangchan2:false,
          cityer:false,
          zufang:false,
        },
        text:"新房热门城市："
      }
    },
    methods:{
      huangYeHid(){
        this.ishidden=false;
      },
      huangYeBlock(){
        this.ishidden=true;
      },
      loupan(){
        this.msgIsHid={
          loupan:true,
          ershouf:false,
          fangchan1:false,
          fangjia:false,
          xinfang:false,
          fangchan2:false,
          cityer:false,
          zufang:false,
        };
        this.text="新房热门城市："
      },
      ershouf(){
        this.msgIsHid={
          loupan:false,
          ershouf:true,
          fangchan1:false,
          fangjia:false,
          xinfang:false,
          fangchan2:false,
          cityer:false,
          zufang:false,
        };
        this.text="二手房热门城市："
      },
      fangchan1(){
        this.msgIsHid={
          loupan:false,
          ershouf:false,
          fangchan1:true,
          fangjia:false,
          xinfang:false,
          fangchan2:false,
          cityer:false,
          zufang:false,
        }
      },
      fangjia(){
        this.msgIsHid={
          loupan:false,
          ershouf:false,
          fangchan1:false,
          fangjia:true,
          xinfang:false,
          fangchan2:false,
          cityer:false,
          zufang:false,
        }
      },
      xinfang(){
        this.msgIsHid={
          loupan:false,
          ershouf:false,
          fangchan1:false,
          fangjia:false,
          xinfang:true,
          fangchan2:false,
          cityer:false,
          zufang:false,
        }
      },
      fangchan2(){
        this.msgIsHid={
          loupan:false,
          ershouf:false,
          fangchan1:false,
          fangjia:false,
          xinfang:false,
          fangchan2:true,
          cityer:false,
          zufang:false,
        }
      },
      cityer(){
        this.msgIsHid={
          loupan:false,
          ershouf:false,
          fangchan1:false,
          fangjia:false,
          xinfang:false,
          fangchan2:false,
          cityer:true,
          zufang:false,
        }
      },
      zufang(){
        this.msgIsHid={
          loupan:false,
          ershouf:false,
          fangchan1:false,
          fangjia:false,
          xinfang:false,
          fangchan2:false,
          cityer:false,
          zufang:true,
        }
      }
    }
  }
</script>
