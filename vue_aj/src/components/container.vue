<template>
<div>
     <!-- 主页头部 -->
    <my-header></my-header>
    <div class="w1180 top-1 clearfix">

    <div style="width:1180px; margin:0 auto;" class="clearfix">
    <div id="content" style="float: left;">
          <div class="content1_top bottom-1">
            <!-- 左侧导航栏 -->
                <div class="top_left">
                    <div @mouseover="add1" :class="count==1?'add':''">买房</div>
                    <div @mouseover="add2" :class="count==2?'add':''">卖房</div>
                    <div @mouseover="add3" :class="count==3?'add':''">租房</div>
                    <div @mouseover="add4" :class="count==4?'add':''">商铺写字楼</div>
                </div>
                <div class="top_right">
                    <div v-show="count==1">
                        <header>
                            <input placeholder="请输入小区名称、地址..." type="text">
                            <div>
                                <a href="javascript:;" class="iconfont icon-RectangleCopy">二手房</a> 
                                <a href="javascript:;" class="iconfont icon-RectangleCopy">新房</a>
                            </div>
                            <ul>
                                <li><a href="javascript:;"><i>推荐</i><span>方圆经纬</span><em>中原-棉纺路</em><b>88888/m²</b></a></li>
                                <li><a href="javascript:;"><i>推荐</i><span>方圆经纬</span><em>中原-棉纺路</em><b>88888/m²</b></a></li>
                                <li><a href="javascript:;"><i>推荐</i><span>方圆经纬</span><em>中原-棉纺路</em><b>88888/m²</b></a></li>
                                <li><a href="javascript:;"><i>推荐</i><span>方圆经纬</span><em>中原-棉纺路</em><b>88888/m²</b></a></li>
                                <li><a href="javascript:;"><i>推荐</i><span>方圆经纬</span><em>中原-棉纺路</em><b>88888/m²</b></a></li>
                                <li><a href="javascript:;"><i>推荐</i><span>方圆经纬</span><em>中原-棉纺路</em><b>88888/m²</b></a></li>
                            </ul>
                        </header>
                        <section>
                            <div>
                                <span>二手房</span><a href="javascript:;" class="a  iconfont icon-dingwei">地图找房</a><br>
                                <a href="javascript:;" title="浦东二手房" class="f">浦东</a>
                                <a href="javascript:;" title="闵行二手房" class="f">闵行</a>
                                <a href="javascript:;" title="宝山二手房" class="f">宝山</a>
                                <a href="javascript:;" title="松江二手房">松江</a>
                                <a href="javascript:;" title="嘉定二手房">嘉定</a>
                                <a href="javascript:;" title="徐汇二手房">徐汇</a>
                                <a href="javascript:;" title="静安二手房">静安</a>
                                <a href="javascript:;" title="青浦二手房">青浦</a>
                                <a href="javascript:;" title="杨浦二手房">杨浦</a>
                                <a href="javascript:;" title="普陀二手房">普陀</a>
                                <a href="javascript:;" title="虹口二手房">虹口</a>
                                <a href="javascript:;" title="长宁二手房">长宁</a>
                                <a href="javascript:;" title="黄浦二手房">黄浦</a>
                                <a href="javascript:;" title="奉贤二手房">奉贤</a>
                                <a href="javascript:;" title="金山二手房">金山</a>
                                <a href="javascript:;" title="上海周边">上海周边</a><br>
                                <a href="javascript:;">100万以下</a>
                                <a href="javascript:;">150-200万以下</a>
                                <a href="javascript:;">200-250万以下</a>
                            </div>
                            <div>
                                <span>新房</span><a href="javascript:;" class="a iconfont icon-dingwei">地图找房</a><br>
                                <a href="javascript:;" title="浦东二手房"  class="f">浦东</a>
                                <a href="javascript:;" title="闵行二手房" class="f">闵行</a>
                                <a href="javascript:;" title="宝山二手房" class="f">宝山</a>
                                <a href="javascript:;" title="松江二手房">松江</a>
                                <a href="javascript:;" title="嘉定二手房">嘉定</a>
                                <a href="javascript:;" title="徐汇二手房">徐汇</a>
                                <a href="javascript:;" title="静安二手房">静安</a>
                                <a href="javascript:;" title="青浦二手房">青浦</a>
                                <a href="javascript:;" title="杨浦二手房">杨浦</a>
                                <a href="javascript:;" title="普陀二手房">普陀</a>
                                <a href="javascript:;" title="虹口二手房">虹口</a>
                                <a href="javascript:;" title="长宁二手房">长宁</a>
                                <a href="javascript:;" title="黄浦二手房">黄浦</a>
                                <a href="javascript:;" title="奉贤二手房">奉贤</a>
                                <a href="javascript:;" title="金山二手房">金山</a>
                                <a href="javascript:;" title="上海周边">上海周边</a><br>
                                <a href="javascript:;">100万以下</a>
                                <a href="javascript:;">150-200万以下</a>
                                <a href="javascript:;">200-250万以下</a>
                            </div>
                        </section>
                    </div>
                    <div class="count2" v-show="count==2">
                        <header>
                            <h2>房东委托</h2>
                            <input type="text" placeholder="请输入并选择小区">
                            <div>
                                <a href="javascript:;" class="iconfont icon-RectangleCopy a" >免费发布房源</a> 
                            </div>
                        </header>
                        <section> 
                            <span><i>1</i>&nbsp;&nbsp;在安居客发房<p>简单2步即可完成发布，方便快捷免费！</p></span><br>
                            <span><i>2</i>&nbsp;&nbsp;优质经纪人全程服务<p>我们挑选优质经纪人为您服务，拒绝骚扰</p></span><br>
                            <span><i>3</i>&nbsp;&nbsp;大量买家<p>优质经纪人协助您完成办理手续</p></span>
                        </section>
                    </div>  
                    <div class="count3" v-show="count==3">
                        <header>
                            <input placeholder="请输入小区名称、地址..." type="text">
                            <div>
                                <a href="javascript:;" class="a iconfont icon-RectangleCopy">租房</a> 
                            </div>
                            <a href="javascript:;" class="b iconfont icon-dingwei">地图找房</a><br>
                        </header>
                        <section>
                            <div style="width:31%;border-right:1px solid #ccc;">
                                <span>热门区域</span><br>
                                <a href="javascript:;" title="浦东二手房" class="f">浦东</a>
                                <a href="javascript:;" title="闵行二手房" class="f">闵行</a>
                                <a href="javascript:;" title="宝山二手房" class="f">宝山</a>
                                <a href="javascript:;" title="松江二手房">松江</a>
                                <a href="javascript:;" title="嘉定二手房">嘉定</a>
                                <a href="javascript:;" title="徐汇二手房">徐汇</a>
                                <a href="javascript:;" title="静安二手房">静安</a>
                                <a href="javascript:;" title="青浦二手房">青浦</a>
                                <a href="javascript:;" title="杨浦二手房">杨浦</a>
                                <a href="javascript:;" title="普陀二手房">普陀</a>
                                <a href="javascript:;" title="虹口二手房">虹口</a>
                                <a href="javascript:;" title="长宁二手房">长宁</a>
                                <a href="javascript:;" title="黄浦二手房">黄浦</a>
                                <a href="javascript:;" title="奉贤二手房">奉贤</a>
                                <a href="javascript:;" title="金山二手房">金山</a>
                                <a href="javascript:;" title="上海周边">上海周边</a><br>
                            </div>
                            <div style="width:68%;">
                                <span>热门板块</span><br>
                                <a href="javascript:;" title="浦东二手房" class="f">浦东</a>
                                <a href="javascript:;" title="闵行二手房" class="f">闵行</a>
                                <a href="javascript:;" title="宝山二手房" class="f">宝山</a>
                                <a href="javascript:;" title="松江二手房">松江</a>
                                <a href="javascript:;" title="嘉定二手房">嘉定</a>
                                <a href="javascript:;" title="徐汇二手房">徐汇</a><br>
                                <a href="javascript:;" title="静安二手房">静安</a>
                                <a href="javascript:;" title="青浦二手房">青浦</a>
                                <a href="javascript:;" title="杨浦二手房">杨浦</a>
                                <a href="javascript:;" title="普陀二手房">普陀</a>
                                <a href="javascript:;" title="虹口二手房">虹口</a>
                                <a href="javascript:;" title="长宁二手房">长宁</a><br>
                                <a href="javascript:;" title="黄浦二手房">黄浦</a>
                                <a href="javascript:;" title="奉贤二手房">奉贤</a>
                                <a href="javascript:;" title="金山二手房">金山</a>
                                <a href="javascript:;" title="上海周边">上海周边</a><br>
                            </div>
                            <div style="width:28%;">
                                <span>租房预算</span><br>
                                <a href="javascript:;">1000元以下</a>
                                <a href="javascript:;">1000-1500元以下</a>
                                <a href="javascript:;">1500-2000元以下</a>
                                <a href="javascript:;">2000-3000元以下</a>
                            </div>
                        </section>
                    </div>
                    <div class="count4 count3" v-show="count==4">
                      <div class="input">
                            <label @click="contsydc1">
                              <input  type="radio" name="ename" checked>租写字楼
                            </label>
                            <label  @click="contsydc2">
                                <input type="radio" name="ename">买写字楼
                            </label>
                            <label  @click="contsydc3">
                                <input type="radio" name="ename">买商铺
                            </label>
                            <label  @click="contsydc4">
                                <input type="radio" name="ename">租店铺
                            </label>
                        </div>
                      <header style="margin-top:50px;">
                            <input placeholder="请输入房源特征、地址、小区、楼盘名或…" type="text">
                            <div>
                                <a href="javascript:;" class="a iconfont icon-RectangleCopy" style="top:58px;">{{contsy}}</a> 
                            </div>
                        </header>
                        <section>
                            <div>
                                <span>热门区域</span><br><br>
                                <a href="javascript:;" title="浦东二手房" class="f">浦东</a>
                                <a href="javascript:;" title="闵行二手房" class="f">闵行</a>
                                <a href="javascript:;" title="宝山二手房" class="f">宝山</a>
                                <a href="javascript:;" title="松江二手房">松江</a>
                                <a href="javascript:;" title="嘉定二手房">嘉定</a>
                                <a href="javascript:;" title="徐汇二手房">徐汇</a>
                                <a href="javascript:;" title="静安二手房">静安</a>
                                <a href="javascript:;" title="青浦二手房">青浦</a>
                                <a href="javascript:;" title="杨浦二手房">杨浦</a>
                                <a href="javascript:;" title="普陀二手房">普陀</a>
                                <a href="javascript:;" title="虹口二手房">虹口</a>
                                <a href="javascript:;" title="长宁二手房">长宁</a>
                                <a href="javascript:;" title="黄浦二手房">黄浦</a>
                                <a href="javascript:;" title="奉贤二手房">奉贤</a>
                                <a href="javascript:;" title="金山二手房">金山</a>
                                <a href="javascript:;" title="上海周边">上海周边</a><br>
                            </div>
                            <div>
                                <span>热门板块</span><br><br>
                                <a href="javascript:;" title="浦东二手房" class="f">浦东</a>
                                <a href="javascript:;" title="闵行二手房" class="f">闵行</a>
                                <a href="javascript:;" title="宝山二手房" class="f">宝山</a>
                                <a href="javascript:;" title="松江二手房">松江</a>
                                <a href="javascript:;" title="嘉定二手房">嘉定</a>
                                <a href="javascript:;" title="徐汇二手房">徐汇</a><br>
                                <a href="javascript:;" title="静安二手房">静安</a>
                                <a href="javascript:;" title="青浦二手房">青浦</a>
                                <a href="javascript:;" title="杨浦二手房">杨浦</a>
                                <a href="javascript:;" title="普陀二手房">普陀</a>
                                <a href="javascript:;" title="虹口二手房">虹口</a>
                                <a href="javascript:;" title="长宁二手房">长宁</a><br>
                                <a href="javascript:;" title="黄浦二手房">黄浦</a>
                                <a href="javascript:;" title="奉贤二手房">奉贤</a>
                                <a href="javascript:;" title="金山二手房">金山</a>
                                <a href="javascript:;" title="上海周边">上海周边</a><br>
                            </div>
                        </section>
                    </div>
               </div>
        </div>
            <!-- 1F 热门楼盘-->
        <div class="cont-wrap">
            <h1 class="home-title">
                <a href="javascript:;">热门楼盘&nbsp;></a>
            </h1>
            <div class="newhouse-content">
                <ul @mouseenter="clear" @mouseleave="set" class="newhouse-scroll-list clearfix" style="margin-left:-892px"  :style="kftStyle">
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item"></li>
                <ul class="newhouse-scroll-list" :style="kftStyle">
                    <li class="newhouse-scroll-item" v-for="(item,index) of list" :key="index">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img :src="item.pic" >
                                <span class="newhouse-li-span" style="color:#fff">{{item.property}}</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[{{item.posi}}] {{item.addres}}</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价{{parseInt(item.unit_price)}}元/㎡,户型面积 {{parseInt(item.proce)}}平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">{{item.xiaoq}}</h3>
                                <span class="buy-tip">{{parseInt(item.payment)}}人已报名</span>
                            </div>
                        </a>
                    </li>
                </ul>  
                    <!-- <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li>
                    <li class="newhouse-scroll-item">
                        <a href="javascript:;">
                            <div class="newhouse-li-div">
                                <img src="../assets/index/newhouse-banner.jpg" >
                                <span class="newhouse-li-span" style="color:#fff">广告</span>
                            </div>
                            <p class="font-16">
                                <span class="subtitle">[经济开发区-经开区]绿都东澜岸</span>
                            </p>
                            <span class="newhouse-t newhouse-b">均价18500元/㎡,户型面积 72.48-136.13平方米</span>
                            <div class="clearfix">
                                <h3 class="buy-info">5号线旁，9月交房</h3>
                                <span class="buy-tip">44人已报名</span>
                            </div>
                        </a>
                    </li> -->
                </ul>
                <a href="javascript:;" class="home-icon show-pre" @click="prev_pic"><i></i></a>
                <a href="javascript:;" class="home-icon show-next" @click="next_pic"><i></i></a>
            </div>
        </div>
            <!-- 2F 热门导购-->
        <div class="cont-wrap">
            <h1 class="home-title">
                <a href="javascript:;">热门导购&nbsp;></a>
            </h1>
            <div class="box pop-content">
                <ul @mouseenter="clear2" @mouseleave="set2" class="pop-scroll-ul clearfix" style="margin-left:-848px" :style="hotStyle">
                     <li>
                        <dl class="clearfix">
                            <dt class="big-guide">
                                <a href="javascript:;">
                                    <img src="../assets/index/403x335n-big.jpg" >
                                </a>
                                <a href="javascript:;">
                                    <p class="font-20">孔雀城住宅集团布局南龙湖郑州孔雀城 ...</p>
                                </a>
                            </dt>
                            <dd class="small-guide">
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small1.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small2.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small3.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small4.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl class="clearfix">
                            <dt class="big-guide">
                                <a href="javascript:;">
                                    <img src="../assets/index/403x335n-big.jpg" >
                                </a>
                                <a href="javascript:;">
                                    <p class="font-20">孔雀城住宅集团布局南龙湖郑州孔雀城 ...</p>
                                </a>
                            </dt>
                            <dd class="small-guide">
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small1.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small2.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small3.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small4.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl class="clearfix">
                            <dt class="big-guide">
                                <a href="javascript:;">
                                    <img src="../assets/index/403x335n-big.jpg" >
                                </a>
                                <a href="javascript:;">
                                    <p class="font-20">孔雀城住宅集团布局南龙湖郑州孔雀城 ...</p>
                                </a>
                            </dt>
                            <dd class="small-guide">
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small1.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small2.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small3.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small4.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl class="clearfix">
                            <dt class="big-guide">
                                <a href="javascript:;">
                                    <img src="../assets/index/403x335n-big.jpg" >
                                </a>
                                <a href="javascript:;">
                                    <p class="font-20">孔雀城住宅集团布局南龙湖郑州孔雀城 ...</p>
                                </a>
                            </dt>
                            <dd class="small-guide">
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small1.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small2.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small3.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small4.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                            </dd>
                        </dl>
                    </li>
                    <li>
                        <dl class="clearfix">
                            <dt class="big-guide">
                                <a href="javascript:;">
                                    <img src="../assets/index/403x335n-big.jpg" >
                                </a>
                                <a href="javascript:;">
                                    <p class="font-20">孔雀城住宅集团布局南龙湖郑州孔雀城 ...</p>
                                </a>
                            </dt>
                            <dd class="small-guide">
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small1.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small2.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small3.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                                <span>
                                    <a href="javascript:;">
                                        <img src="../assets/index/190x130n-small4.jpg">
                                    </a>
                                    <a href="javascript:;">
                                        <p class="font-16">2号线双湖大道站  碧桂园双湖城解析</p>
                                    </a>
                                </span>
                            </dd>
                        </dl>
                    </li>
                </ul>
                <a href="javascript:;" class="home-icon show-pre" @click="prev_pic2"><i></i></a>
                <a href="javascript:;" class="home-icon show-next" @click="next_pic2"><i></i></a>
                <ul class="scroll-list clearfix" @click='change($event)'>
                    <li class="scroll-item" :class="num==1?'curItem':''" data-slide=0></li>
                    <li class="scroll-item" :class="num==2?'curItem':''" data-slide=1></li>
                    <li class="scroll-item" :class="num==3?'curItem':''" data-slide=2></li>
                </ul>
            </div>
        </div>
        <!-- 广告 -->
       
       <contentbottom></contentbottom>
    </div>
    <!-- 右侧主体 -->
    <div class="fr">
        <right-content></right-content>
    </div>
    </div>
<contentfoot></contentfoot>
</div>
    <my-footer></my-footer>
    <!-- 主页底部 -->
</div>
</template>

<script>
// 引入右侧广告
import rightContent from './rightContent'
import contentfoot from './contentFoot'
import contentbottom from './contentBottom'
export default {
    data(){
        return {
            count:1,
            kftStyle:"",
            index:1, 
            num:1,
            hotStyle:"",
            contsy:"租写字楼",
            timer:"",
            list:[]
        }
    },
    methods:{
      next_pic(){
          this.index++;
          this.kftStyle=`margin-left:${-892*this.index}px;transition:margin-left .5s`;
            if(this.index>2){
            setTimeout(()=>{
            this.index=0;
            this.kftStyle=`margin-left:0px;transition:0s`;
            },500)
         }
      },
      prev_pic(){
          this.index--;
          this.kftStyle=`margin-left:${-892*this.index}px;transition:margin-left .5s`;
            if(this.index<1){
            setTimeout(()=>{
            this.index=2;
            this.kftStyle=`margin-left:${-892*this.index}px;transition:0s`;
            },500)
         }
      },
      next_pic2(){
        this.num++;
        this.hotStyle=`margin-left:${-848*this.num}px;transition:margin-left .5s`;
        if(this.num>3){
        setTimeout(()=>{
            this.num=1;
            this.hotStyle=`margin-left:-848px;transition:0s`;
            
        },500)
        }
      },
      prev_pic2(){
        this.num--
        this.hotStyle=`margin-left:${-848*this.num}px;transition:margin-left .5s`;
        console.log(this.num)
        if(this.num<1){
        setTimeout(()=>{
            this.num=3;
            this.hotStyle=`margin-left:${this.num*-848}px;transition:0s`;

            this.num=0;
            this.hotStyle=`margin-left:0px;transition:0s`;
        },500)
        }
      },
      change(e){
          this.num=e.target.dataset.slide
          this.hotStyle=`margin-left:${-848*this.num}px;transition:margin-left .5s`;
      },
      clear(){
          clearInterval(this.timer)
      },
      clear2(){
          clearInterval(this.timer)
      },
      set(){
          this.timer=setInterval(()=>{
            this.next_pic();
            this.next_pic2()
        },3000)
      },
      set2(){
          this.timer=setInterval(()=>{
            this.next_pic();
            this.next_pic2()
        },3000)
      }
    ,
    contsydc1(){
        this.contsy="租写字楼"
    },
    contsydc2(){
        this.contsy="买写字楼"
    },
    contsydc3(){
        this.contsy="租商铺"
    },
    contsydc4(){
        this.contsy="买商铺"
    },
      add1(){
        this.count=1;
       },
        add2(){
        this.count=2
       },
        add3(){
        this.count=3
       },
        add4(){
        this.count=4
       }
    },
    mounted(){
        this.timer=setInterval(()=>{
            this.next_pic();
            this.next_pic2()
        },3000)
    },
    created(){
        this.axios.get("/container",{}).then(result=>{
            this.list=result.data;
            console.log(this.list);
        })
    },
    components:{
        rightContent,
        contentfoot,
        contentbottom
    }
}
</script>
<style scoped>
.top-1{margin-top:1rem;}
    .right-1{margin-right:1rem;}
    .bottom-1{margin-bottom:1.6rem;}
    .left-1{margin-left:1rem;}
    #content{
        width:870px;height:3000;
        /* margin:0 auto; */
        float: left;
    }
    .content2{
        display:flex;
        justify-content: space-between;
        width:100%;
        height:448px;
    }
    .content2 .content2-d{
        width:48.5%;height:100%;
        border:1px solid red;
        display:flex;
        flex-direction: column;
    }
    .content2 div.con-d{
        width:100%;height:49%;
        display:flex;
        justify-content:space-between;
    }
    .content2 div.con-d:first-child{
        margin-bottom:8px;
    }
    .content2 div.con-d div{
        width:48%;height:100%;
        border:1px solid red;
    }
    .content3{
        display:flex;
        justify-content: space-between;
        width:100%;height:500px;
    }
    .content3 div.content3-d{
        height:90%;
        border:1px solid red;
    }
    .content3 div.content3-d:first-child{
        width:66%;
    }
    .content3 div.content3-d:last-child{
        width:32%;
    }
    .content4,.content5{
        width:100%;
        height:360px;
        border:1px solid red;
    }
    .content6{
        width:100%;
        height:260px;
        border:1px solid red;
    }

.top-1{
    margin-top:1rem;
}
    .content1{
        display:flex;
        width:100%;
        height:300px;
    }
    .content1_top{
        width:100%; height:100%;
        border:1px solid #D8D8D8;
        border-radius:5px;
        position:relative;
    }
    .content1_bottom{
        width:28%;height:100%;
        border:2px solid #F7F7F7;
        border-radius:5px;
    }
    
    .content1_top .top_left{
       text-align: center;
       line-height:75px;
       width:20%;height:100%; 
       font-size:1.2rem;
    }
    .top_left div{
        border-right:1px solid #d8d8d8;
        border-bottom:1px solid #D8D8D8;
        background-color:#F7F7F7;
        height:24.75%; 
    }
    .content1_top .top_right{
       position: absolute;
       top:0;right:0;
       width:80%;height:100%;
    }
    .content1_top .top_right div{
        width:100%;height:100%;
        /* border:1px solid red; */
        position: absolute;
       top:0;right:0;
    }
   .add{
       border-right:0 !important;
       background-color:#fff !important;
   }
   .top_right div:first-child{
       display:flex;
       flex-direction:column;
   }
    .top_right div header{
        margin:1.5rem;
        background-color:rgb(230, 230, 230);
        height:60px;
        display:flex;
        justify-content: space-between;
        align-items:center;
        border-radius:5px;
    }
    .top_right div header input{
        position:absolute;
        height:40px;width:345px;
        margin-left:.7rem;
        z-index: 60;
        border-radius:5px;
        padding-left:.8rem;
        outline: medium;
    }
    .top_right div header input:focus{
        border:1px solid #FF911B;
    }
    .top_right div header input:focus ~ ul{
        display:block;
    }
    .top_right div header div a{
        position:absolute;
        z-index:20;
        top:32px;right:2rem;
        display:inline-block;
        width:125px;height:45px;
        background-color:#CB4600;
        font-size:20px;
        text-align:center;
        line-height: 45px;
        border-radius:5px;
    }
    .top_right div header div a:first-child{
        right:10.5rem;
        background-color:#FF911B;
    }
    .top_right div header div a:hover{
        opacity:0.7;
    }
    .top_right div header ul{
        position:absolute;
        top:75px;left:37px;
        z-index:99;
        background-color:#fff;
        width:355px;
        border:1px solid #d8d8d8;
        border-bottom-left-radius:5px;
        border-bottom-right-radius:5px;
        border-top:0;
        display:none;
    }
    .top_right div header ul li i{
        display:inline-block;
        width:34px;height:15px;
        color:#fff;
        background-color:#FF911B;
        text-align:center;
        line-height:15px;
        font-style:normal;
        margin-top:10px;
        margin-bottom:10px;
    }
    .top_right div header ul li{
        padding-left:10px;
    }
    .top_right div header ul li:hover{
        background-color:#ccc !important;
    }
    .top_right div header ul li span{
        color:black;
        margin:0 10px 0 5px;
        font-size:16px;
    }
    .top_right div header ul li em,.top_right div:first-child header ul li b{
        color:#999999;
        font-size:14px;
        font-style:normal;
    }
    .top_right div header ul li b{
        float:right;margin-right:10px;margin-top:10px;
    }
    .top_right section{
        position:relative;
        width:646px;height:163px;
        bottom:0;left:28px;
    }
    .top_right section>div:first-child{
        position:absolute;left:0; 
        width:48%;height:163px; 
        display:inline-block;
    }
    .top_right section div a.a{
        color:#2c81cd;
        margin-left:175px;
    }
    .top_right section>div a{
        color:black;font-size:14px;
        display:inline-block !important;
        margin:10px 5px;
    }
    .top_right section>div a:hover{
        color:#FF911B;
        text-decoration: underline;
    }
    .top_right a.f{
        color:#FF911B;
    }
     .top_right section>div span{
         font-size:16px;
         margin-left:5px;
     }
    .top_right section>div:last-child{
        right:0; position:absolute;
        width:50%;height:163px;
         border-left:1px solid #ccc;
    }
    .top_right section>div:last-child span{
        margin-left:15px;
    }
    .top_right section>div:last-child a{
        margin-left:15px;
    }
    .top_right section>div:last-child a.a{
        margin-left:165px;
    }
    .top_right .count2 header{
        position:absolute;
        width:358px;
        top:120px;left:30px;
    }    
    .top_right .count2 header input{
        width:320px;
    }
    .top_right .count2 header a.a{
        position: absolute;
        width:200px;
        top:95px !important;
        left:2px !important;
    }
    .top_right .count2 header h2{
        position: absolute;
        top:-76px;left:0px;
        font-size:28px;
        color:#f60;
    }
    .top_right .count2 section{
        position:absolute;
        left:450px;top:60px;
        width:470px;
    }
    .top_right .count2 section i{
        display:inline-block;
        width:20px;height:20px;
        text-align:center;
        background-color:#62AB00;
        color:#fff;
        line-height:20px;
        font-style:normal;
    }
     .top_right .count2 section span{
         font-size:18px;
     }
    .top_right .count2 section p{
        font-size:12px;
        color:#ccc;
        margin-top:10px;
    }
    .top_right .count3 header{
        width:515px;
    }
    .top_right .count3 header a.b{
        position:absolute;
        top:47px;right:40px;
        color:#2C81CD;
    }
    .count4 div.input{
        position: absolute;
        top: 1rem;
        z-index: 1;
        display:inline-block;
        font-size:14px;
        width:100%;height:25px;
    }
    .count4 div.input input{
        margin-left:2rem;
    }
/* 热门楼盘 */
.cont-wrap{
    margin-bottom: 30px;
}
.home-title{
    font-weight: bold;
    color: #333;
    display: block;
    margin-left: 20px;
    margin-bottom: 10px;
}
.home-title a{
    font-weight: bold;
    font-family: "Hiragino Sans GB","Microsoft YaHei",tahoma,arial,simhei;
    font-size: 20px;
    color: #333;
    cursor: pointer;
}
.newhouse-content{
    position: relative;
    width: 870px;
    height: 412px;
    overflow: hidden;
}
.newhouse-scroll-list{
    width: 10258px;
}
.newhouse-scroll-list li{
    float: left;
    margin-right: 22px;
}
.newhouse-scroll-item a{
    width: 382px;
    padding: 20px;
    height: 370px;
    display: block;
    border: 1px solid #d8d8d8;
    border-radius: 5px;
}
.newhouse-li-div{
    position: relative;
}
.newhouse-li-div img{
    border: 0;
    width: 382px;
    height: 260px;
    margin-bottom: 12px;
}
.newhouse-scroll-item span{
    color: #999;
    font-size: 14px;
    display: block;
}
.newhouse-li-span{
    position: absolute;
    right: 10px;
    bottom: 14px;
    color: white;
    font-size: 12px;
}
.newhouse-scroll-item p{
    color:#333
}
.font-16{
    font-size:16px;
}
.font-16 .subtitle{
    font-size:16px;
    color:#333;
}
.buy-info{
    float: left;
    color: #f60;
    font-size: 24px;
    line-height: 32px;
    font-weight: normal;
}
.buy-tip{
    float: right;
    height: 32px;
    line-height: 32px;
}
.newhouse-scroll-item span{
    color: #999;
    font-size: 14px;
    display: block; 
}
.newhouse-t{
    margin-top: 12px;
} 
.newhouse-b{
    margin-bottom: 14px;
} 
.home-icon{
    background: url(../assets/index/home-new.png) no-repeat 0 0;
}
a.show-pre{
    left: 1px;
    background-color: #000;
    background-position: 5px -4px;
    opacity: 0.4;
    position: absolute;
    top: 132px;
    width: 38px;
    height: 39px;
}
a.show-next{
    right: 1px;
    background-color: #000;
    background-position: 8px -51px;
    width: 40px;
    position: absolute;
    top: 132px;
    width: 38px;
    height: 39px;
    opacity: 0.4;
}
/*热门导购*/ 
.box{
    padding: 20px;
    border: 1px solid #d8d8d8;
    border-radius: 5px; 
}
.pop-content{
    position: relative;
    width: 828px;
    overflow: hidden;
    height: 426px;
}
.pop-scroll-ul{
    width: 4240px;
    padding: 0;
}
.pop-scroll-ul li{
    list-style: none;
    float: left;
    margin-right: 20px;
    position: relative;
    width: 828px;
}
.big-guide{
    float: left;
}
.big-guide img{
    display: block;
    width: 403px;
    height: 335px;
}
.big-guide p{
    font-size: 20px;
    color: #333333;
    height: 54px;
    line-height: 54px;
    display: inline;
}  
.small-guide{
    width: 425px;
    float: left;
    margin: 0;
    padding: 0;
}
.small-guide span{
    margin: 0px 0px 10px 22px;
    float: left;
}   
.small-guide img{
    display: block;
    width: 190px;
    height: 130px;
}  
.small-guide p{
    margin-top: 4px;
    margin-bottom: 5px;
    font-size: 16px;
    color: #333333;
    width: 190px;
    height: 56px;
    line-height: 28px;
}
.scroll-list{
    margin: 6px 372px;
    width: 84px;
}
.scroll-list li{
    cursor: pointer;
    float: left;
    margin: 0 10px;
    list-style: none;
    border-radius: 4px;
    width: 8px;
    height: 8px;
    background-color: #BEBEBE;
    overflow: hidden;
}
.scroll-list .curItem{
    background-color: #62ab00;
}
</style>
}
</style>
