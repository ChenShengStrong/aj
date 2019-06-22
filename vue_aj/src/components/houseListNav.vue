<template>
  <div class="houseList w1180">
    <div class="nav w1180">
      <!-- 位置 -->
      <div class="nav-item nav-position">
        <span>位置：</span>
        <div class="filter-head">
          <a href="javascript:;" :class="pos==0?'colorF60':''" @mouseenter.prevent="pos=0">区域找房<strong class="sanjiao"></strong></a>
          <a href="javascript:;" :class="pos==1?'colorF60':''" @mouseenter.prevent="pos=1">地铁找房<strong class="sanjiao"></strong></a>
        </div>
        <!-- 区域 -->
        <div :class="pos==0?'block':'hid'">
          <!-- 区域内容 -->
          <div class="filter">
            <a href="javascript:;" :class="filterN==-1?'colorF60':''" @click.prevent="filterN=-1">全部</a>
            <a href="javascript:;" :class="filterN==0?'colorF60':''" @click.prevent="filterN=0,filterSubN=0">郑东新区</a>
            <a href="javascript:;" :class="filterN==1?'colorF60':''" @click.prevent="filterN=1,filterSubN=0">金水</a>
            <a href="javascript:;" :class="filterN==2?'colorF60':''" @click.prevent="filterN=2,filterSubN=0">二七</a>
            <a href="javascript:;" :class="filterN==3?'colorF60':''" @click.prevent="filterN=3,filterSubN=0">新郑市</a>
            <a href="javascript:;" :class="filterN==4?'colorF60':''" @click.prevent="filterN=4,filterSubN=0">中牟县</a>
            <a href="javascript:;" :class="filterN==5?'colorF60':''" @click.prevent="filterN=5,filterSubN=0">中原区</a>
            <a href="javascript:;" :class="filterN==6?'colorF60':''" @click.prevent="filterN=6,filterSubN=0">高新区</a>
            <a href="javascript:;" :class="filterN==7?'colorF60':''" @click.prevent="filterN=7,filterSubN=0">航空港</a>
            <a href="javascript:;" :class="filterN==8?'colorF60':''" @click.prevent="filterN=8,filterSubN=0">汞阳市</a>
            <a href="javascript:;" :class="filterN==9?'colorF60':''" @click.prevent="filterN=9,filterSubN=0">惠济</a>
            <a href="javascript:;" :class="filterN==10?'colorF60':''" @click.prevent="filterN=10,filterSubN=0">管城</a>
            <a href="javascript:;" :class="filterN==11?'colorF60':''" @click.prevent="filterN=11,filterSubN=0">经济开发区</a>
            <a href="javascript:;" :class="filterN==12?'colorF60':''" @click.prevent="filterN=12,filterSubN=0">郑州周边</a>
            <a href="javascript:;" :class="filterN==13?'colorF60':''" @click.prevent="filterN=13,filterSubN=0">上街</a>
            <a href="javascript:;" :class="filterN==14?'colorF60':''" @click.prevent="filterN=14,filterSubN=0">新密市</a>
            <a href="javascript:;" :class="filterN==15?'colorF60':''" @click.prevent="filterN=15,filterSubN=0">登封市</a>
            <a href="javascript:;" :class="filterN==16?'colorF60':''" @click.prevent="filterN=16,filterSubN=0">巩义市</a>
          </div>
          <!-- 区域模块 -->
          <!-- 郑东新区 -->
          <div class="filter-sub" :class="filterN==0?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>万三公路</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>七里河</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>东风路</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>新东站</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>CBD</a>
            <a href="javascript:;" :class="filterSubN==6?'colorF60':''" @click.prevent="filterSubN=6"><em :class="filterSubN==6?'bg':''">√</em>龙子湖</a>
            <a href="javascript:;" :class="filterSubN==7?'colorF60':''" @click.prevent="filterSubN=7"><em :class="filterSubN==7?'bg':''">√</em>绿博白沙</a>
            <a href="javascript:;" :class="filterSubN==8?'colorF60':''" @click.prevent="filterSubN=8"><em :class="filterSubN==8?'bg':''">√</em>北龙湖</a>
          </div>
          <!-- 金水 -->
          <div class="filter-sub" :class="filterN==1?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>中州大道</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>东风渠</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>天旺广场</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>民航路</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>国贸</a>
            <a href="javascript:;" :class="filterSubN==6?'colorF60':''" @click.prevent="filterSubN=6"><em :class="filterSubN==6?'bg':''">√</em>森林公园</a>
            <a href="javascript:;" :class="filterSubN==7?'colorF60':''" @click.prevent="filterSubN=7"><em :class="filterSubN==7?'bg':''">√</em>其他</a>
            <a href="javascript:;" :class="filterSubN==8?'colorF60':''" @click.prevent="filterSubN=8"><em :class="filterSubN==8?'bg':''">√</em>杨金路</a>
          </div>
          <!-- 二七 -->
          <div class="filter-sub" :class="filterN==2?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>航海西路</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>嵩山南路</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>万达广场</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>医学院</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>南三环</a>
            <a href="javascript:;" :class="filterSubN==6?'colorF60':''" @click.prevent="filterSubN=6"><em :class="filterSubN==6?'bg':''">√</em>其他</a>
          </div>
          <!-- 新郑市 -->
          <div class="filter-sub" :class="filterN==3?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>新郑</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>龙湖</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>薛店</a>
          </div>
          <!-- 中牟县 -->
          <div class="filter-sub" :class="filterN==4?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>中牟县</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>新县城</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>雁鸣湖</a>
          </div>
          <!-- 中原 -->
          <div class="filter-sub" :class="filterN==5?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>碧沙岗</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>陇海西路</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>桐柏北路</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>五龙口</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>西流湖</a>
            <a href="javascript:;" :class="filterSubN==6?'colorF60':''" @click.prevent="filterSubN=6"><em :class="filterSubN==6?'bg':''">√</em>中原万达</a>
            <a href="javascript:;" :class="filterSubN==7?'colorF60':''" @click.prevent="filterSubN=7"><em :class="filterSubN==7?'bg':''">√</em>其他</a>
          </div>
          <!-- 高新区 -->
          <div class="filter-sub" :class="filterN==6?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>高新区</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>科学大道</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>黄路</a>
          </div>
          <!-- 航空港区 -->
          <div class="filter-sub" :class="filterN==7?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>航空港</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>航空港南</a>
          </div>
          <!-- 汞阳市 -->
          <div class="filter-sub" :class="filterN==8?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>洞林湖</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>汞阳城区</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>汞阳东</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>宜居健康城</a>
          </div>
          <!-- 惠济 -->
          <div class="filter-sub" :class="filterN==9?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>北三环</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>北大学城</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>省体育中心</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>惠济区政府</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>黄河游览区</a>
          </div>
          <!-- 管城 -->
          <div class="filter-sub" :class="filterN==10?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>紫金山</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>管南片</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>陇海东路</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>东西大街</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>航海东路</a>
          </div>
          <!-- 经济开发区 -->
          <div class="filter-sub" :class="filterN==11?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>经开区</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>滨河国际新城</a>
          </div>
          <!-- 郑州周边 -->
          <div class="filter-sub" :class="filterN==12?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>成都</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>平原新区</a>
            <a href="javascript:;" :class="filterSubN==3?'colorF60':''" @click.prevent="filterSubN=3"><em :class="filterSubN==3?'bg':''">√</em>洛阳</a>
            <a href="javascript:;" :class="filterSubN==4?'colorF60':''" @click.prevent="filterSubN=4"><em :class="filterSubN==4?'bg':''">√</em>其他</a>
            <a href="javascript:;" :class="filterSubN==5?'colorF60':''" @click.prevent="filterSubN=5"><em :class="filterSubN==5?'bg':''">√</em>武陟</a>
            <a href="javascript:;" :class="filterSubN==6?'colorF60':''" @click.prevent="filterSubN=6"><em :class="filterSubN==6?'bg':''">√</em>长葛</a>
          </div>
          <!-- 上街 -->
          <div class="filter-sub" :class="filterN==13?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>上街</a>
          </div>
          <!-- 新密市 -->
          <div class="filter-sub" :class="filterN==14?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>新密市</a>
          </div>
          <!-- 登封市 -->
          <div class="filter-sub" :class="filterN==15?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>登封市</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>其他</a>
          </div>
          <!-- 巩义市 -->
          <div class="filter-sub" :class="filterN==16?'block':'hid'">
            <a href="javascript:;" :class="filterSubN==0?'colorF60':''" @click.prevent="filterSubN=0">全部</a>
            <a href="javascript:;" :class="filterSubN==1?'colorF60':''" @click.prevent="filterSubN=1"><em :class="filterSubN==1?'bg':''">√</em>巩义市</a>
            <a href="javascript:;" :class="filterSubN==2?'colorF60':''" @click.prevent="filterSubN=2"><em :class="filterSubN==2?'bg':''">√</em>其他</a>
          </div>
        </div>
        <!-- 线路 -->
        <div :class="pos==1?'block':'hid'">
          <!-- 线路内容 -->
          <div class="filter">
            <a href="javascript:;" :class="filterNum==0?'colorF60':''" @click.prevent="filterNum=0,lineOne=0">一号线</a>
            <a href="javascript:;" :class="filterNum==1?'colorF60':''" @click.prevent="filterNum=1,lineTwo=0">二号线</a>
            <a href="javascript:;" :class="filterNum==2?'colorF60':''" @click.prevent="filterNum=2,lineFive=0">五号线</a>
            <a href="javascript:;" :class="filterNum==3?'colorF60':''" @click.prevent="filterNum=3,lineOther=0">城郊线</a>
          </div>
          <!-- 线路模块 -->
          <div class="filter-sub" :class="filterNum==0?'block':'hid'">
            <a href="javascript:;" :class="lineOne==0?'colorF60':''" @click.prevent="lineOne=0">全部</a>
            <a href="javascript:;" :class="lineOne==1?'colorF60':''" @click.prevent="lineOne=1"><em :class="lineOne===1?'bg':''">√</em>河南工业大学</a>
            <a href="javascript:;" :class="lineOne==2?'colorF60':''" @click.prevent="lineOne=2"><em :class="lineOne==2?'bg':''">√</em>郑州科技园</a>
            <a href="javascript:;" :class="lineOne==3?'colorF60':''" @click.prevent="lineOne=3"><em :class="lineOne==3?'bg':''">√</em>郑州大学</a>
            <a href="javascript:;" :class="lineOne==4?'colorF60':''" @click.prevent="lineOne=4"><em :class="lineOne==4?'bg':''">√</em>梧桐街</a>
            <a href="javascript:;" :class="lineOne==5?'colorF60':''" @click.prevent="lineOne=5"><em :class="lineOne==5?'bg':''">√</em>兰寨</a>
            <a href="javascript:;" :class="lineOne==6?'colorF60':''" @click.prevent="lineOne=6"><em :class="lineOne==6?'bg':''">√</em>铁炉</a>
            <a href="javascript:;" :class="lineOne==7?'colorF60':''" @click.prevent="lineOne=7"><em :class="lineOne==7?'bg':''">√</em>市民中心</a>
            <a href="javascript:;" :class="lineOne==8?'colorF60':''" @click.prevent="lineOne=8"><em :class="lineOne==8?'bg':''">√</em>西流湖</a>
            <a href="javascript:;" :class="lineOne==9?'colorF60':''" @click.prevent="lineOne=9"><em :class="lineOne==9?'bg':''">√</em>西三环</a>
            <a href="javascript:;" :class="lineOne==10?'colorF60':''" @click.prevent="lineOne=10"><em :class="lineOne==10?'bg':''">√</em>秦岭路</a>
            <a href="javascript:;" :class="lineOne==11?'colorF60':''" @click.prevent="lineOne=11"><em :class="lineOne==11?'bg':''">√</em>五一公园</a>
            <a href="javascript:;" :class="lineOne==12?'colorF60':''" @click.prevent="lineOne=12"><em :class="lineOne==12?'bg':''">√</em>碧沙岗</a>
            <a href="javascript:;" :class="lineOne==13?'colorF60':''" @click.prevent="lineOne=13"><em :class="lineOne==13?'bg':''">√</em>绿城广场</a>
            <a href="javascript:;" :class="lineOne==14?'colorF60':''" @click.prevent="lineOne=14"><em :class="lineOne==14?'bg':''">√</em>医学院</a>
            <a href="javascript:;" :class="lineOne==15?'colorF60':''" @click.prevent="lineOne=15"><em :class="lineOne==15?'bg':''">√</em>郑州火车站</a>
            <a href="javascript:;" :class="lineOne==16?'colorF60':''" @click.prevent="lineOne=16"><em :class="lineOne==16?'bg':''">√</em>二七广场</a>
            <a href="javascript:;" :class="lineOne==17?'colorF60':''" @click.prevent="lineOne=17"><em :class="lineOne==17?'bg':''">√</em>人民路</a>
            <a href="javascript:;" :class="lineOne==18?'colorF60':''" @click.prevent="lineOne=18"><em :class="lineOne==18?'bg':''">√</em>燕庄</a>
            <a href="javascript:;" :class="lineOne==19?'colorF60':''" @click.prevent="lineOne=19"><em :class="lineOne==19?'bg':''">√</em>民航路</a>
            <a href="javascript:;" :class="lineOne==20?'colorF60':''" @click.prevent="lineOne=20"><em :class="lineOne==20?'bg':''">√</em>会展中心</a>
            <a href="javascript:;" :class="lineOne==21?'colorF60':''" @click.prevent="lineOne=21"><em :class="lineOne==21?'bg':''">√</em>黄河南路</a>
            <a href="javascript:;" :class="lineOne==22?'colorF60':''" @click.prevent="lineOne=22"><em :class="lineOne==22?'bg':''">√</em>农业路</a>
            <a href="javascript:;" :class="lineOne==23?'colorF60':''" @click.prevent="lineOne=23"><em :class="lineOne==23?'bg':''">√</em>东风南路</a>
            <a href="javascript:;" :class="lineOne==24?'colorF60':''" @click.prevent="lineOne=24"><em :class="lineOne==24?'bg':''">√</em>郑州东站</a>
            <a href="javascript:;" :class="lineOne==25?'colorF60':''" @click.prevent="lineOne=25"><em :class="lineOne==25?'bg':''">√</em>博学路</a>
            <a href="javascript:;" :class="lineOne==26?'colorF60':''" @click.prevent="lineOne=26"><em :class="lineOne==26?'bg':''">√</em>市体育中心</a>
            <a href="javascript:;" :class="lineOne==27?'colorF60':''" @click.prevent="lineOne=27"><em :class="lineOne==27?'bg':''">√</em>龙子湖</a>
            <a href="javascript:;" :class="lineOne==28?'colorF60':''" @click.prevent="lineOne=28"><em :class="lineOne==28?'bg':''">√</em>文苑北路</a>
            <a href="javascript:;" :class="lineOne==29?'colorF60':''" @click.prevent="lineOne=29"><em :class="lineOne==29?'bg':''">√</em>河南大学新区</a>
          </div>
          <div class="filter-sub" :class="filterNum==1?'block':'hid'">
             <a href="javascript:;" :class="lineTwo==0?'colorF60':''" @click.prevent="lineTwo=0">全部</a>
             <a href="javascript:;" :class="lineTwo==1?'colorF60':''" @click.prevent="lineTwo=1"><em :class="lineTwo===1?'bg':''">√</em>刘庄</a>
            <a href="javascript:;" :class="lineTwo==2?'colorF60':''" @click.prevent="lineTwo=2"><em :class="lineTwo==2?'bg':''">√</em>柳林</a>
            <a href="javascript:;" :class="lineTwo==3?'colorF60':''" @click.prevent="lineTwo=3"><em :class="lineTwo==3?'bg':''">√</em>沙门</a>
            <a href="javascript:;" :class="lineTwo==4?'colorF60':''" @click.prevent="lineTwo=4"><em :class="lineTwo==4?'bg':''">√</em>北三环</a>
            <a href="javascript:;" :class="lineTwo==5?'colorF60':''" @click.prevent="lineTwo=5"><em :class="lineTwo==5?'bg':''">√</em>东风路</a>
            <a href="javascript:;" :class="lineTwo==6?'colorF60':''" @click.prevent="lineTwo=6"><em :class="lineTwo==6?'bg':''">√</em>关虎屯</a>
            <a href="javascript:;" :class="lineTwo==7?'colorF60':''" @click.prevent="lineTwo=7"><em :class="lineTwo==7?'bg':''">√</em>黄鹤楼</a>
            <a href="javascript:;" :class="lineTwo==8?'colorF60':''" @click.prevent="lineTwo=8"><em :class="lineTwo==8?'bg':''">√</em>紫金山</a>
            <a href="javascript:;" :class="lineTwo==9?'colorF60':''" @click.prevent="lineTwo=9"><em :class="lineTwo==9?'bg':''">√</em>东大街</a>
            <a href="javascript:;" :class="lineTwo==10?'colorF60':''" @click.prevent="lineTwo=10"><em :class="lineTwo==10?'bg':''">√</em>东海东路</a>
            <a href="javascript:;" :class="lineTwo==11?'colorF60':''" @click.prevent="lineTwo=11"><em :class="lineTwo==11?'bg':''">√</em>二里岗</a>
            <a href="javascript:;" :class="lineTwo==12?'colorF60':''" @click.prevent="lineTwo=12"><em :class="lineTwo==12?'bg':''">√</em>南五里堡</a>
            <a href="javascript:;" :class="lineTwo==13?'colorF60':''" @click.prevent="lineTwo=13"><em :class="lineTwo==13?'bg':''">√</em>花寨</a>
            <a href="javascript:;" :class="lineTwo==14?'colorF60':''" @click.prevent="lineTwo=14"><em :class="lineTwo==14?'bg':''">√</em>南三环</a>
            <a href="javascript:;" :class="lineTwo==15?'colorF60':''" @click.prevent="lineTwo=15"><em :class="lineTwo==15?'bg':''">√</em>站马屯</a>
            <a href="javascript:;" :class="lineTwo==16?'colorF60':''" @click.prevent="lineTwo=16"><em :class="lineTwo==16?'bg':''">√</em>南四环</a>
          </div>
          <div class="filter-sub" :class="filterNum==2?'block':'hid'">

          </div>
          <div class="filter-sub" :class="filterNum==3?'block':'hid'">
            
          </div>
        </div>
      </div>
      <!-- 单价 -->
      <div class="nav-item">
        <span>单价：</span>
        <a href="javascript:;" @click.prevent="picNum=0" :class="picNum==0?'colorF60':''">全部</a>
        <a href="javascript:;" @click.prevent="picNum=1" :class="picNum==1?'colorF60':''">8千以下</a>
        <a href="javascript:;" @click.prevent="picNum=2" :class="picNum==2?'colorF60':''">8千~1万</a>
        <a href="javascript:;" @click.prevent="picNum=3" :class="picNum==3?'colorF60':''">1万~1.2万</a>
        <a href="javascript:;" @click.prevent="picNum=4" :class="picNum==4?'colorF60':''">1.2万~1.5万</a>
        <a href="javascript:;" @click.prevent="picNum=5" :class="picNum==5?'colorF60':''">1.5万~1.8万</a>
        <a href="javascript:;" @click.prevent="picNum=6" :class="picNum==6?'colorF60':''">1.8万~2万</a>
        <a href="javascript:;" @click.prevent="picNum=7" :class="picNum==7?'colorF60':''">2万以上</a>
      </div>
      <!-- 户型 -->
      <div class="nav-item">
        <span>户型：</span>
        <a href="javascript:;" @click.prevent="huxingNum=0" :class="huxingNum==0?'colorF60':''">全部</a>
        <a href="javascript:;" @click.prevent="huxingNum=1" :class="huxingNum==1?'colorF60':''"><em :class="huxingNum==1?'bg':''">√</em>一室</a>
        <a href="javascript:;" @click.prevent="huxingNum=2" :class="huxingNum==2?'colorF60':''"><em :class="huxingNum==2?'bg':''">√</em>二室</a>
        <a href="javascript:;" @click.prevent="huxingNum=3" :class="huxingNum==3?'colorF60':''"><em :class="huxingNum==3?'bg':''">√</em>三室</a>
        <a href="javascript:;" @click.prevent="huxingNum=4" :class="huxingNum==4?'colorF60':''"><em :class="huxingNum==4?'bg':''">√</em>四室</a>
        <a href="javascript:;" @click.prevent="huxingNum=5" :class="huxingNum==5?'colorF60':''"><em :class="huxingNum==5?'bg':''">√</em>五室以上</a>
      </div>
      <!-- 更多 -->
      <div class="nav-item mor">
        <span>更多：</span>
        <div class="pull-down">
          <div id="xsType">
            <strong>{{xsType}}</strong><span class="sanjiao ml-20"></span>
          </div>
          <div id="xsType-list" class="pull-down-list hid">
            <a href="javascript:;" style="width:100%;" :class="xsType=='销售状态'?'colorF60':''" @click.prevent="xsType='销售状态'">全部</a>
            <a href="javascript:;" style="width:100%;" :class="xsType=='在售'?'colorF60':''" @click.prevent="xsType='在售'">在售</a>
            <a href="javascript:;" style="width:100%;" :class="xsType=='待售'?'colorF60':''" @click.prevent="xsType='待售'">待售</a>
            <a href="javascript:;" style="width:100%;" :class="xsType=='售罄'?'colorF60':''" @click.prevent="xsType='售罄'">售罄</a>
          </div>
        </div>
        <div class="pull-down">
          <div id="wyType">
            <strong>{{wyType}}</strong><span class="sanjiao ml-20"></span>
          </div>
          <div id="wyType-list" class="pull-down-list hid">
            <a href="javascript:;" style="width:100%;" :class="wyType=='物业类型'?'colorF60':''" @click.prevent="wyType='物业类型'">全部</a>
            <a href="javascript:;" style="width:100%;" :class="wyType=='住宅'?'colorF60':''" @click.prevent="wyType='住宅'">住宅</a>
            <a href="javascript:;" style="width:100%;" :class="wyType=='别墅'?'colorF60':''" @click.prevent="wyType='别墅'">别墅</a>
           <a href="javascript:;" style="width:100%;" :class="wyType=='商住'?'colorF60':''" @click.prevent="wyType='商住'">商住</a>
            <a href="javascript:;" style="width:100%;" :class="wyType=='商铺'?'colorF60':''" @click.prevent="wyType='商铺'">商铺</a>
            <a href="javascript:;" style="width:100%;" :class="wyType=='写字楼'?'colorF60':''" @click.prevent="wyType='写字楼'">写字楼</a>
          </div>
        </div>
        <div class="pull-down">
          <div id="kpTime">
            <strong>{{kpTime}}</strong><span class="sanjiao ml-20"></span>
          </div>
          <div id="kpTime-list" class="pull-down-list hid">
            <a href="javascript:;" style="width:100%;" :class="kpTime=='开盘时间'?'colorF60':''" @click.prevent="kpTime='开盘时间'">全部</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='本月开盘'?'colorF60':''" @click.prevent="kpTime='本月开盘'">本月开盘</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='未来一个月'?'colorF60':''" @click.prevent="kpTime='未来一个月'">未来一个月</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='未来三个月'?'colorF60':''" @click.prevent="kpTime='未来三个月'">未来三个月</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='未来半年'?'colorF60':''" @click.prevent="kpTime='未来半年'">未来半年</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='过去一个月'?'colorF60':''" @click.prevent="kpTime='过去一个月'">过去一个月</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='过去三个月'?'colorF60':''" @click.prevent="kpTime='过去三个月'">过去三个月</a>
            <a href="javascript:;" style="width:100%;" :class="kpTime=='近期开盘'?'colorF60':''" @click.prevent="kpTime='近期开盘'">近期开盘</a>
          </div>
        </div>
        <div class="pull-down">
          <div id="zxType">
            <strong>{{zxType}}</strong><span class="sanjiao ml-20"></span>
          </div>
          <div id="zxType-list" class="pull-down-list hid">
            <a href="javascript:;" style="width:100%;" :class="zxType=='装修状况'?'colorF60':''" @click.prevent="zxType='装修状况'">全部</a>
            <a href="javascript:;" style="width:100%;" :class="zxType=='毛坯'?'colorF60':''" @click.prevent="zxType='毛坯'">毛坯</a>
            <a href="javascript:;" style="width:100%;" :class="zxType=='简装'?'colorF60':''" @click.prevent="zxType='简装'">简装</a>
            <a href="javascript:;" style="width:100%;" :class="zxType=='精装修'?'colorF60':''" @click.prevent="zxType='精装修'">精装修</a>
          </div>
        </div>
        <a href="javascript:;" @click.prevent="morNum=0" :class="morNum==0?'colorF60':''"><em :class="morNum==0?'bg':''">√</em>即将开盘</a>
        <a href="javascript:;" @click.prevent="morNum=1" :class="morNum==1?'colorF60':''"><em :class="morNum==1?'bg':''">√</em>支持微聊</a>
        <a href="javascript:;" @click.prevent="morNum=2" :class="morNum==2?'colorF60':''"><em :class="morNum==2?'bg':''">√</em>视频看房</a>
        <a href="javascript:;" @click.prevent="morNum=3" :class="morNum==3?'colorF60':''"><em :class="morNum==3?'bg':''">√</em>全景看房</a>
      </div>
      <!-- 看二手房 -->
      <a href="javascript:;"></a>
      </div>
    </div>
  </div>
</template>
<style scoped>
  *{
    box-sizing: border-box;
  }
  .mor{
    border: 0 !important;
    padding: 0 0 0 50px !important;
  }
  .houseList{
    margin-bottom: 20px;
  }
  .ml-20{
    margin-left:20px !important;
  }
  .nav{
    border: 1px solid #ddd;
    margin-top:20px;
    padding:4px 0 1px 20px;
  }
  .nav-position{
    display: relative;
  }
  .sanjiao{
    display: inline-block;
    margin-left: 5px;
    border-width: 5px;
    border-style: solid;
    border-color: #000 transparent transparent transparent;
  }
  .nav-item{
    border-bottom:1px dashed #ddd;
    padding-bottom: 10px;
  }
  .nav-item a,.nav-item span{
    color: #333;
    font-size: 14px;
  }
  .colorF60,.filter-sub span,.nav a:hover{
    color: #f60 !important;
  }
  .nav-item{
    padding-left:50px;
  }
  .nav-item>span{
    display: inline-block;
    margin-left: -50px;
    margin-top:15px;
  }
  .nav a{
    display: inline-block;
    margin: 5px 10px;
  }
  .filter-head{
    margin-top:-18px;
    margin-bottom: 10px;
  }
  .hid{
    display: none;
  }
  .block{
    display: block;
  }
  div.filter-sub a em,.nav-item a em{
    display: inline-block;
    margin-right: 2px;
    width: 12px;
    height: 12px;
    font-size: 8px;
    line-height: 12px;
    color: #fff;
    border: 1px solid #ddd;
    background-color: #fff;
  }
  .bg{
    background: #f60 !important;
    border: 1px solid #f60 !important;
  }
  .pull-down{
    display: inline-block;
    width: 100px;
    height: 30px;
    padding-left: 10px;
    border: 1px solid #e6e6e6;
    vertical-align: middle;
    text-align: left;
    line-height: 30px;
    font-size: 14px;
    color: #333;
    margin:10px;
  }
  .pull-down-list{
    position: relative;
    width: 110px;
    background-color: #fff;
    border: 1px solid #e6e6e6;
    margin-left: -11px;
    z-index: 1;
  }
  #xsType:hover ~ #xsType-list,#xsType-list:hover,
  #wyType:hover ~ #wyType-list,#wyType-list:hover,
  #kpTime:hover ~ #kpTime-list,#kpTime-list:hover,
  #zxType:hover ~ #zxType-list,#zxType-list:hover{
    display: block !important;
  }
</style>
<script>
  export default {
    data(){
      return{
        pos:0,
        filterN:-1,
        filterSubN:0,
        picNum:0,
        huxingNum:0,
        morNum:-1,
        filterNum:0,
        lineOne:0,
        lineTwo:0,
        xsType:"销售状态",
        wyType:"物业类型",
        kpTime:"开盘时间",
        zxType:"装修状况",
      }
    }
  }
</script>
