<template>
  <div class="container">
    <!-- 免费发布房源 -->
    <div class="publishHouse">
      <div class="btn-links">
        <a href="javascript:;" class="btn publish-btn">
          <div class="">
              <i></i>
          </div>
          我要卖房
        </a>
      </div>
      <div class="links">
        <a href="javascript:;" target="_blank">>>我要估价</a>
      </div>
    </div>
    <!-- 看房团 -->
    <div class="content-wrap">
      <h1 class="home-title">
        <a href="javascript:;" target="_blank">看房团&nbsp;></a>
      </h1>
      <div class="box kft-box box-content">
        <div class="box-content-inner">
          <ul class="box-content-scroll clearfix" :style="kftStyle" >
            <li class="box-page" v-for="(item,i) of list" :key="i">
              <a href="javascript:;" class="box-page-link">
                <h3>{{item.opentime}}</h3>
                <ul>
                  <li>
                    <h4>{{item.title}}</h4>
                    <p>{{item.wuyetype}}</p>
                  </li>
                  <li>
                    <h4>{{item.posi}}</h4>
                    <p>{{item.addres}}</p>
                  </li>
                  <li>
                    <h4>{{item.deliver}}</h4>
                    <p>{{item.saleAddr}}</p>
                  </li>
                </ul>
                <p class="box-info">
                  <i class="icon-huo iconfont"></i>
                  {{parseInt(item.price)}}人已报名
                </p>
                <div class="box-inof-btn">免费报名</div>
              </a>
            </li>
            <!-- <li class="box-page">
              <a href="javascript:;" class="box-page-link">
                <h3>[2019-06-03]北线</h3>
                <ul>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                </ul>
                <p class="box-info">
                  <i class="icon-huo iconfont"></i>
                  66人已报名
                </p>
                <div class="box-inof-btn">免费报名</div>
              </a>
            </li>
            <li class="box-page">
              <a href="javascript:;" class="box-page-link">
                <h3>[2019-06-05]东线</h3>
                <ul>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                </ul>
                <p class="box-info">
                  <i class="icon-huo iconfont"></i>
                  66人已报名
                </p>
                <div class="box-inof-btn">免费报名</div>
              </a>
            </li>
            <li class="box-page">
              <a href="javascript:;" class="box-page-link">
                <h3>[2019-06-02]西线</h3>
                <ul>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>恒大山水城...等6个楼盘</p>
                  </li>
                </ul>
                <p class="box-info">
                  <i class="icon-huo iconfont"></i>
                  66人已报名
                </p>
                <div class="box-inof-btn">免费报名</div>
              </a>
            </li>
            <li class="box-page">
              <a href="javascript:;" class="box-page-link">
                <h3>[2019-06-01]南线</h3>
                <ul>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>美誉铭筑...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>美誉铭筑...等6个楼盘</p>
                  </li>
                  <li>
                    <h4>线路楼盘</h4>
                    <p>美誉铭筑...等6个楼盘</p>
                  </li>
                </ul>
                <p class="box-info">
                  <i class="icon-huo iconfont"></i>
                  66人已报名
                </p>
                <div class="box-inof-btn">免费报名</div>
              </a>
            </li> -->
          </ul>
        </div>
        <div class="scroll-num" @click="change($event)">
          <li :class="index==0?'active':''" data-slide=0></li>
          <li :class="index==1?'active':''" data-slide=1></li>
          <li :class="index==2?'active':''" data-slide=2></li>
          <li :class="index==3?'active':''" data-slide=3></li> 
        </div>
      </div>
    </div>
    <!-- 特色楼盘 -->
    <div class="content-wrap">
      <h1 class="home-title" >
        <a href="javascript:;" target="_blank">特色楼盘&nbsp;></a>
      </h1>
      <div class="box prop-content">
        <div class="border-b s-title">
          <div class="prop-ul-title">
            <a href="javascript:;" target="_blank">品牌开发商</a>
          </div>
          <ul class="ul-m-b">
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
          </ul>
        </div>
        <div class="border-b s-title">
          <div class="prop-ul-title">
            <a href="javascript:;" target="_blank">品牌开发商</a>
          </div>
          <ul class="ul-m-b">
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
          </ul>
        </div>
        <div class="border-b s-title">
          <div class="prop-ul-title">
            <a href="javascript:;" target="_blank">品牌开发商</a>
          </div>
          <ul class="ul-m-b">
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
            <li class="clearfix">
              <dl class="dl-pad comm-dl clearfix">
                <dt>
                  <a href="javascript:;">锦艺四季城</a>
                </dt>
                <dd>
                  <em class="price">14500</em>元/
                  <em class="square"></em>m²
                </dd>
              </dl>
            </li>
          </ul>
        </div>
      </div>
    </div>
    <!-- 右侧广告1 -->
    <div class="content-wrap">
      <div class="right-1st-add" style="position:relative">
        <div style="width:285px;height:95px;border:none;padding:0px;margin:0px;overflow:hidden;position: relative;">
          <a href="javascript:;" target="_blank">
            <img src="../assets/rightContent/right-1st-add.jpg" style="width:285px;height:95px;border:none;">
          </a>
          <span style="position: absolute;right: 11px;bottom: 0;color: white;">广告</span>
        </div>
      </div>
    </div>
    <!-- 新房动态 -->
    <div class="content-wrap">
      <h1 class="home-title">
        <a href="javascript:;">新房动态&nbsp;></a>
      </h1>
      <div class="box newhouse-content">
        <ul class="content-list newhouse-t newhouse-b">
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
        </ul>
        <ul class="content-list newhouse-t newhouse-b">
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
          <li class="content-item">
            <a href="javascript:;">锦艺四季城目前有部分大户型房源在</a>
          </li>
        </ul>
        
      </div>
    </div>
    <!-- 右侧广告2 -->
    <div class="content-wrap">
      <div class="right-1st-add" style="position:relative">
        <div style="width:285px;height:95px;border:none;padding:0px;margin:0px;overflow:hidden;position: relative;">
          <a href="javascript:;" target="_blank">
            <img src="../assets/rightContent/right-2st-add.jpg" style="width:285px;height:95px;border:none;">
          </a>
          <span style="position: absolute;right: 11px;bottom: 0;color: white;">广告</span>
        </div>
      </div>
    </div>
    <!-- 房价趋势 -->
    <div class="content-wrap">
      <h1 class="home-title">
        <a href="javascript:;" target="_blank">郑州房价趋势&nbsp;></a>
      </h1>
      <div class="box price-content">
        <dl class="price-m-t clearfix price-dl">
          <dt>6月均价:</dt>
          <dd>
            <span>13782</span>元/
            <em>m²</em>
          </dd>
        </dl>
        <dl class="clearfix price-dl">
          <dt>环比5月:</dt>
          <dd class="color-orange">
            上升
            <span>0.27</span>
            %
          </dd>
        </dl>
        <dl class="clearfix price-dl">
          <dt>同比去年同期:</dt>
          <dd class="color-orange">
            上涨
            <span>9.28</span>
            %
          </dd>
        </dl>
        <a href="javascript:;" target="_blank" class="price-chat">
          <img src="../assets/rightContent/price-img.png" >
        </a>
        <p class="price-p">本站”均价”数据统计自物业顾问发布的数据</p>
      </div>
    </div>
    <!-- 房产问答 -->
    <div class="content-wrap">
      <h1 class="home-title">
        <a href="javascript:;" target="_blank">房产问答&nbsp;></a>
      </h1>
      <div class="box housequest">
        <ul class="qu-m-b border-b content-list">
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
          <li>
            <a href="javascript:;">2016二手房交易需缴纳哪些税费 </a>
          </li>
        </ul>
        <a href="javascript:;" class="housequest-btn font-20">我要提问</a>
      </div>
    </div>
    <!-- 右侧广告3 -->
    <div class="content-wrap">
      <div class="right-1st-add" style="position:relative">
        <div style="width:285px;height:95px;border:none;padding:0px;margin:0px;overflow:hidden;position: relative;">
          <a href="javascript:;" target="_blank">
            <img src="../assets/rightContent/right-3st-add.jpg" style="width:285px;height:95px;border:none;">
          </a>
          <span style="position: absolute;right: 11px;bottom: 0;color: white;">广告</span>
        </div>
      </div>
    </div>
    <!-- 租房小区排行 -->
    <div class="content-wrap">
      <h1 class="home-title">
        郑州租房小区排行&nbsp;>
      </h1>
      <div class="box rent-content">
        <ul class="content-list rent-m-t">
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
          <li>
            <span class="col1">
              <a href="javascript">金水 - 曼哈顿广场 </a>
            </span>
            <span class="col2">
              <a href="javascript:;">985套</a>
            </span>
          </li>
        </ul>
      </div>
    </div>
     <!-- 右侧广告4 -->
     <div class="content-wrap">
      <div class="right-1st-add" style="position:relative">
        <div style="width:285px;height:95px;border:none;padding:0px;margin:0px;overflow:hidden;position: relative;">
          <a href="javascript:;" target="_blank">
            <img src="../assets/rightContent/right-4st-add.jpg" style="width:285px;height:95px;border:none;">
          </a>
          <span style="position: absolute;right: 11px;bottom: 0;color: white;">广告</span>
        </div>
      </div>
    </div>
    <!-- 右侧广告4下面部分 -->
    <div class="content-wrap">
      <h1 class="home-title heightfont">产品中心</h1>
      <div class="box master-content">
        <div class="content-wrap">
          <div style="position:relative" class="right-4th">
            <div style="width:244px;height:209px;border:none;padding:0px;margin: 0 auto;overflow:hidden;">
              <a href="javascript:;">
                <img src="../assets/rightContent/right-4st-add-bottom.jpg" alt="" style="width:244px;height:209px;border:none;">
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { setTimeout } from 'timers';
export default {
  data(){
      return{
        kftStyle:`margin-left:0px`,
        index:0,   
        list:[]
    }
  },
  methods:{
    next_pic(){
        this.index++;
        this.kftStyle=`margin-left:${-246*this.index}px;transition:margin-left .5s`;
      if(this.index>3){
        setTimeout(()=>{
          this.index=0;
          this.kftStyle=`margin-left:${-246*this.index}px;transition:margin-left 0s`;
        },500)
      }
    },
    change(e){
      this.index=e.target.dataset.slide
      this.kftStyle=`margin-left:${-246*this.index}px;transition:margin-left .5s`;
     
    }
  },
  mounted(){
   
  },
  created(){
    this.axios.get("/detail/newhouse",{}).then(result=>{
      // for(var i=0;i<4;i++){
        this.list=result.data;
    //   }
      this.list[4]=result.data[0];
    //   console.log(this.list);
    })
     setInterval(()=>{
       this.next_pic()
       
    },3000);
  }
}
  
</script>
<style scoped>
.publishHouse{
    width: 286px;
    height: 291px;
    margin: 10px 0 30px;
    background: #fff0dc;
    overflow: hidden;
    background: url(../assets/rightContent/publishhouse-bg-v4.jpg) no-repeat;
}
.publishHouse .btn-links{
    text-align: center;
    margin: 210px 0 0 0;
}
.publishHouse .btn-links .btn{
    display: inline-block;
    height: 40px;
    line-height: 40px;
    color: #fff;
    background: #f60;
    font-size: 18px;
    padding: 0 15px 0 15px;
    border-radius: 7px;
}
.publishHouse .btn-links .btn div{
    display: inline-block;
    width: 25px;
    height: 25px;
    vertical-align: -6px;
    margin-right: 6px;
    border-radius: 15px;
    background: #fff;
}
.publishHouse .btn-links .btn div i{
    display: block;
    width: 0;
    height: 0;
    margin: 5px 0 0 8px;
    border-width: 8px 0 8px 13px;
    border-style: solid;
    border-color: transparent transparent transparent #f60;
}
.publishHouse .links{
    display: block;
    margin-top: 10px;
    text-align: center;
}
.publishHouse .links a{
    color: #a65d34;
    font-size: 16px;
}

/* 看房团 */
.content-wrap{
  margin-bottom: 30px;
}
.home-title{
  font-weight: bold;
  font-size: 20px;
  color: #333;
  display: block;
  margin-left: 20px;
  margin-bottom: 10px;
}
.home-title a{
    font-family: "Hiragino Sans GB","Microsoft YaHei",tahoma,arial,simhei;
    font-size: 20px;
    color: #333;
    cursor: pointer;
    font-weight: bold;
}
.home-title a:hover{
  color: #f60;
  text-decoration: underline;
  outline: 0;
}
.kft-box{
    box-sizing: border-box;
    padding: 15px 20px 0;
    width: 286px;
 }   
 .box{
  padding: 20px;
  border: 1px solid #d8d8d8;
  border-radius: 5px;
 } 
 .box-content{
    padding: 20px;
    border: 1px solid #d8d8d8;
    border-radius: 5px; 
}
.box-content-inner{
    position: relative;
    width: 246px;
    height: 361px;
    overflow: hidden;
}
.box-content-scroll{
  height: 361px;
  width: 1230px;
  
}

.box-content-scroll .box-page{
    float: left;
    width: 246px;
    position: relative;
    height: 100%;
}
.box-page-link{
  color: #0041d9;
  text-decoration: none;
  outline: 0;
}
.box-content-scroll h3{
    font-weight: bold;
    font-size: 20px;
    color: #333;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
}
.box-content-scroll .box-page li{
    margin-top: 30px;
    padding-left: 15px;
    background: url(../assets/rightContent/dot.png) no-repeat 0 5px;
    vertical-align: middle;
}
.box-content-scroll .box-page li h4{
    font-size: 14px;
    color: #333;
}
.box-content-scroll .box-page li p{
  font-size: 14px;
  color: #999;
  margin-top: 5px;
  overflow: hidden;
  text-overflow: ellipsis;
  white-space: nowrap;
}
.box-info .iconfont{
  color: #f60;
  margin-right: 5px;
}
.box-page-link li h4{
  font-size: 14px;
  color: #333;
}  
.box-page-link li p{
    font-size: 14px;
    color: #999;
    margin-top: 5px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap; 
}

.box-info{
  text-align: center;
  font-size: 13px;
  color: #999;
  position: absolute;
  bottom: 80px;
  width: 100%;
}
.box-inof-btn{
  position: absolute;
  width: 220px;
  height: 50px;
  line-height: 50px;
  text-align: center;
  color: #fff;
  font-size: 20px;
  background: #62ab00;
  border-radius: 4px;
  cursor: pointer;
  bottom: 15px;
}
.box-inof-btn:hover{
  background: #477e00;
}
.scroll-num{
  margin: 0 auto;
  text-align: center;
} 
.scroll-num li{
    cursor: pointer;
    display: inline-block;
    margin: 0 4px;
    list-style: none;
    border-radius: 4px;
    width: 8px;
    height: 8px;
    background-color: #d8d8d8;
    overflow: hidden;
} 
.scroll-num .active{
  background-color: #62ab00;
}

/* 特色楼盘 */
.prop-content{
    height: 426px;
    overflow: hidden;
}
.border-b{
  border-bottom: 1px dashed #e6e6e6;
} 
.s-title{
  margin-bottom: 20px;
}
.prop-ul-title{
  margin-bottom: 15px;
}
.prop-ul-title a{
  font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
  display: inline-block;
  height: 24px;
  padding: 0 10px;
  border: 1px #62ab00 solid;
  line-height: 24px;
  text-align: center;
  font-size: 14px;
  color: #61ab00;
}
.prop-ul-title a:hover{
  background-color: #f2ffe1;
  text-decoration: none;
}
.ul-m-b{
  margin-bottom: 6px;
}
.dl-pad{
  padding-bottom: 13px;
} 
.comm-dl dt{
  width: 160px;
  float: left;
}
.comm-dl dt a{
    color: #333;
    font-size: 14px;
    display: block;
    overflow: hidden;
}
.comm-dl dt a:hover{
  color: #f60;
  text-decoration: underline;
  outline: 0;
}
.comm-dl dd{
  font-size: 14px;
  width: 80px;
  float: right;
  text-align: right;
  font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
  overflow: hidden;
  line-height: 21px;
  color: #333;
  height: 21px;
}
em{
  font-style: normal;
  font-weight: normal;
}
.ul-m-b li em.price{
  font-family: tahoma;
}
.ul-m-b li em.square{
  font-family: "tahoma";
  font-size: 14px;
}
/* 右侧第1广告 */
.right-1st-add{
  height: 95px;
  overflow: hidden;
}
/* 新房动态 */
.newhouse-content{
    height: 478px;
    overflow: hidden;
}
.newhouse-t{
  margin-top: 4px;
} 
.newhouse-b{
  margin-bottom: 57px;
}
.content-item{
    background: url(../assets/rightContent/dot.png) no-repeat 0 9px;
    vertical-align: middle;
    padding-left: 16px;
    overflow: hidden;
    padding-bottom: 20px;
    height: 20px;
    line-height: 20px;
}
.content-list li a{
    font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
    font-size: 14px;
    color: #333;
}
.content-list li a:hover{
    color: #f60;
    text-decoration: underline;
}
/* 房价趋势 */
.price-content{
    height: 360px;
    overflow: hidden;
}
.price-m-t{
  margin-top: -8px;
}
.price-dl dt{
  width: 106px;
  color: #999;
  font-size: 14px;
  font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
  float: left;
  overflow: hidden;
  line-height: 33px;
}
.price-dl dd{
  width: 100px;
  font-size: 16px;
  font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
  float: left;
  overflow: hidden;
  line-height: 33px;
}
.price-dl dd span,.price-dl dd em{
  font-family: tahoma;
}
.color-orange{
  color:#f60
}
.price-chat{
    width: 197px;
    border: 0;
    display: block;
    margin-top: 15px;
}
.price-chat img{
    width: 245px;
    height: 197px;
}
.price-p{
    font-size: 12px;
    color: #999;
    font-family: "tahoma";
    margin-top: 42px;
}
/* 房产问答 */
.housequest{
  height: 339px;
  overflow: hidden;
}
.qu-m-b{
  margin-bottom: 14px;
} 
.border-b {
  border-bottom: 1px dashed #e6e6e6;  
}
.content-list li{
    background: url(../assets/rightContent/dot.png) no-repeat 0 9px;
    vertical-align: middle;
    padding-left: 16px;
    overflow: hidden;
    padding-bottom: 20px;
    height: 20px;
    line-height: 20px;
}
.content-list li a{
  font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
  font-size: 14px;
  color: #333;
}
.housequest .housequest-btn{
    width: 245px;
    height: 42px;
    border-radius: 8px;
    background-color: #62ab00;
    display: block;
    color: #fff;
    text-align: center;
    line-height: 42px;
} 
.housequest .housequest-btn:hover{
  background: #477e00;
}
.font-20{
  font-size: 20px;
}
/* 租房小区排行 */
.rent-content{
    height: 339px;
    overflow: hidden;
}
.rent-m-t{
    margin-top: 0;
}
.content-list span.col1,.content-list span.col2{
  line-height: 20px;
  height: 20px;
  overflow: hidden; 
}
.content-list span.col1{
 width: 170px;
  float: left;
}
.content-list span.col2{
  width: 56px;
  float: right;
  text-align: right;
  color: #36c;
  font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
  font-size: 14px;
}
.content-list span.col2 a{
  color: #36c;
}
.content-list li{
    background: url(../assets/rightContent/dot.png) no-repeat 0 9px;
    vertical-align: middle;
    padding-left: 16px;
    overflow: hidden;
    padding-bottom: 20px;
    height: 20px;
    line-height: 20px;
}
.content-list li a{
    font-family: "Microsoft YaHei","Hiragino Sans GB",tahoma,arial,simhei;
    font-size: 14px;
    color: #333; 
}
/* 右侧广告4下面部分 */
.heightfont{
  height: 27px;
}
.master-content{
  height: 210px;
}
.right-4th{
    height: 209px;
    overflow: hidden;
}
</style>

