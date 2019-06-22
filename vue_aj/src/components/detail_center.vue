<template>
<div>   
    <div class="w1180 clearfix">
        <head-detail></head-detail>
        <house-list></house-list> 
        <!-- 左侧 -->
        <div class="w900 clearfix margin">
            <ul class="title_ul">
                <li><a href="javascript:;" class="a">全部楼盘</a></li>
                <li><a href="javascript:;" class="iconfont icon-youhui">优惠楼盘</a></li>
                <li><a href="javascript:;" class="iconfont icon-fangzi">商业地产</a></li>
                <li><a href="javascript:;" class="iconfont icon-youhui1">品牌楼盘</a></li>    
            </ul>
            <div>
                <div class="heaA clearfix">
                    <p>默认排序价格开盘时间 共有<span>1163</span>个符合要求的郑州楼盘</p>
                    <a href="javascript:;">开盘时间<a class="iconfont icon-arrow" style="font-size:14px;"></a></a>
                    <a href="javascript:;">价格<a class="iconfont icon-arrow" style="font-size:14px;"></a></a>
                    <a href="javascript:;" class="a">默认排序</a>
                </div>
                <div class="heaG">
                    <div>
                        <a class="iconfont icon-fangzi1"></a>
                        <p>亚新美好意境</p>
                    </div>
                    <div>
                        <img src="../assets/detail/106x40n.jpg" alt="">
                        <h3>3</h3>
                        <span>在售楼盘</span>
                    </div>
                    <div>
                        <h1>品牌介绍</h1>
                        <p>亚新集团成立于1997年，历经22年发</p><p>展，致力搭建全生命周期美好生活服务</p><p>平台，打造房、地、产、服、金在内的</p><p style="float:left">多元化服务体系。</p>    
                    </div>   
                </div>
            </div>
            <div class="action">
                <a href="javascript:;" class="acta clearfix" v-for="(item,i) of list" :key="i">
                    <img :src="item.pic" alt="">
                    <div>
                        <h1>{{item.title}}</h1>
                        <p>[ {{item.posi}} ] {{item.addres}}</p>
                        <p>户型：<span>{{item.apartment}}</span><span v-show="item.price?true:false">&nbsp;&nbsp;建筑面积：{{item.price}}㎡</span></p>
                        <a href="javascript:;" class="a">{{str[i][0]}}</a>
                        <a href="javascript:;" class="b">{{str[i][1]}}</a>
                        <a href="javascript:;">{{str[i][2]}}</a>
                        <a href="javascript:;">{{str[i][3]}}</a>
                        <a href="javascript:;">{{str[i][4]}}</a>
                        <a href="javascript:;">{{str[i][5]}}</a>
                        <a href="javascript:;" v-show="str[i][6]?true:false">{{str[i][6]}}</a>
                        <a href="javascript:;" v-show="str[i][7]?true:false">{{str[i][7]}}</a>
                    </div>
                    <div class="right">
                        <p v-show="item.unit_price!='售价待定'?true:false">均价<span>{{item.unit_price}}</span>元/㎡</p>
                        <p v-show="item.unit_price=='售价待定'?true:false"><span>{{item.unit_price}}</span></p>
                        <span>400-603-2266 转 42203</span>
                    </div>
                </a>
               <!--
                <a href="javascript:;" class="acta clearfix">
                    <img src="../assets/detail/180x135m.jpg" alt="">
                    <div>
                        <h1>亚新美好艺境</h1>
                        <p>[ 郑东新区 绿博白沙 ] 郑汴物流通道,近人文路</p>
                        <p>户型：<span>3室</span><span>4室</span><span>&nbsp;&nbsp;建筑面积：133-169㎡</span></p>
                        <a href="javascript:;" class="a">在售</a>
                        <a href="javascript:;" class="b">住宅</a>
                        <a href="javascript:;">项目在建</a>
                        <a href="javascript:;">品牌开发商</a>
                        <a href="javascript:;">南北通透</a>
                        <a href="javascript:;">三房朝南</a>
                    </div>
                    <div class="right">
                        <p>均价<span>12000</span>元/㎡</p>
                        <span>400-603-2266 转 42203</span>
                    </div>
                </a> -->
            </div>
        </div>
        <!-- 右侧 -->
        <div class="w234 clearfix margin">
            <div class="f1">
                <h2>热门楼盘</h2><a href="javascript:;" class="a">更多>></a>
                <div class="clearfix"></div>
                <a href="javascript:;" class="p15">
                    <img src="../assets/detail/800252aefe1848af3e0cbda90d9442be.jpg" alt="">
                    <h4><span>中原</span>-融信奥体世纪</h4>
                    <p>品质美宅即将盛... <span> 17人已报名</span></p>
                </a>
                <a href="javascript:;" class="p15">
                    <img src="../assets/detail/800252aefe1848af3e0cbda90d9442be.jpg" alt="">
                    <h4><span>中原</span>-融信奥体世纪</h4>
                    <p>品质美宅即将盛... <span> 17人已报名</span></p>
                </a>
                <a href="javascript:;" class="p15">
                    <img src="../assets/detail/800252aefe1848af3e0cbda90d9442be.jpg" alt="">
                    <h4><span>中原</span>-融信奥体世纪</h4>
                    <p>品质美宅即将盛... <span> 17人已报名</span></p>
                </a>
                <a href="javascript:;" class="p15">
                    <img src="../assets/detail/800252aefe1848af3e0cbda90d9442be.jpg" alt="">
                    <h4><span>中原</span>-融信奥体世纪</h4>
                    <p>品质美宅即将盛... <span> 17人已报名</span></p>
                </a>
                <a href="javascript:;" class="p15">
                    <img src="../assets/detail/800252aefe1848af3e0cbda90d9442be.jpg" alt="">
                    <h4><span>中原</span>-融信奥体世纪</h4>
                    <p style="border:0">品质美宅即将盛... <span> 17人已报名</span></p>
                </a>
            </div>
            <!-- ****************** -->
            <div class="f2">
                <a href="javascript:;" class="p15">
                    <h3>郑州房价行情</h3>
                    <p>6月均价：<span>13811元/平米</span></p>
                    <p>比5月上涨：<span>↑0.31%</span></p>
                    <img src="../assets/detail/pp.png" alt="">
                </a>
            </div>
            <div class="f3">
                <a href="javascript:;" class="p15">
                    <img src="../assets/detail/58_jinrong.jpg" alt="">
                </a>
            </div>
            <div class="f4">
                <div class="p15">
                    <ul :style="marStyle" @mouseover="over" @mouseout="out">
                        <li><a href="javascript:;"><img src="../assets/detail/housekeeping200_2003px.jpg" alt=""></a></li>
                        <li><a href="javascript:;"><img src="../assets/detail/car200_2001.jpg" alt=""></a></li>
                        <li><a href="javascript:;"><img src="../assets/detail/work200_2001px.jpg" alt=""></a></li>
                        <li><a href="javascript:;"><img src="../assets/detail/used200_2003px.jpg" alt=""></a></li>
                        <li><a href="javascript:;"><img src="../assets/detail/house200_2006px .jpg" alt=""></a></li>
                        <li><a href="javascript:;"><img src="../assets/detail/pet200_2001 .jpg" alt=""></a></li>
                        <li><a href="javascript:;"><img src="../assets/detail/housekeeping200_2003px.jpg" alt=""></a></li>
                    </ul>
                </div>
                <a @click.prevent="Fleft"  @mouseover="over" @mouseout="out" class="a iconfont icon-arrow-left-copy"></a>
                <a @click.prevent="Fright"  @mouseover="over" @mouseout="out" class="a b iconfont icon-left"></a>
            </div>
        </div>
        
    </div>
    <foo-Ter></foo-Ter>
</div>
</template>
<script>
import headDetail from './head';
import houseList from './houseListNav';
import fooTer from './Footer';
export default {
    data(){
        return {
            set:0,
            tt:true,
            setTime:null,
            marStyle:`margin-left:-0px;`,
            list:[],
            str:[]
        }
    },
    methods:{
        Fleft(){
            if(this.set>1){
            this.set--;
            this.marStyle=`margin-left:-${200*this.set}px;`
            }else{this.set=6;
            this.marStyle="margin-left:0;transition:0s;";
            }
        },
        Fright(){
            if(this.set<6){
               this.set++;  
                this.marStyle=`margin-left:-${200*this.set}px;transition:all .5s;`;       
            }else{this.set=0;
                this.marStyle="margin-left:-0;transition:0s;";
            }
        },
        over(){
            this.tt=false;
        },
        out(){
            this.tt=true;
        }
    },
    mounted(){
      this.setTime=setInterval(()=>{
               if(this.tt==true){
               this.Fright();}
                }, 1500);
    },
    components:{
        headDetail,
        houseList,
        fooTer
    },
    created(){
        var url= location.href.split("?")[1];
        var des;
        if(url==undefined){
            des={name:url}
        }else{
            des=undefined;
        }
        console.log(url);
        this.axios.get("/detail/"+url,{params:des}).then(result=>{
            this.list=result.data;
        for(var i=0;i<result.data.length;i++){
            var strIng=result.data[i].characteristic;
            var str1 = strIng.split(","); 
            this.str[i] = str1;
            }
        })
    }
}
</script>
<style scoped>
    .margin{margin-top:1rem;}
    .w900{width:900px;float:left;}
    .w234{width:260px;height:40px;float:right;}
    span{color:#666}
    .c{color:#62AB00;}
    .p15{ display:block;padding:15px 24px 0;}
    .title_ul{
        border-bottom:3px solid #62AB00;
    }
    .title_ul li{
        display:inline-block;
        width:106px;height:38px;
        /* 背景颜色  #62AB00 */
        border-top:1px solid #ccc;
        border-right:1px solid #ccc;
        line-height: 38px;
        text-align:center;
    }
    .title_ul a{
        color:black;
        font-size:16px;
        display: inline-block;width:100%;height:100%;
    }
    .title_ul li a.a{
        color:#fff;
        border-left:1px solid #ccc;
    }
    .title_ul li:first-child,.title_ul li a:hover{
        background-color:#62AB00;
        color:#fff;
    }
    .heaA{
        margin-top:1.5rem;
        color:#666;
        font-size:14px;
    }
    .heaA p{
        float:left;
    }
    .heaA span,.heaA a:hover{
        color:#EB6001;
    }
    .heaA a{
        color:#666;
        float:right;
        margin-left:7px;
    }
    .heaA a.a{
        color:#EB6001;
    }
    .heaG{
        width:100%;height:175px;
        background-image:url("../assets/detail/900x175n.jpg");
        margin-top:1rem;
        position:relative;
    }
    .heaG>div:first-child{
        position:absolute;
        width:280px;height:108px;
        background-color:#70A400;
        border-radius:5px;
        left:2.5rem;top:2rem;
        text-align:right;
    }
    .heaG>div:first-child a{
        font-size:36px;
        display:inline-block;
        margin:16px 52px 12px 0;
    }
    .heaG>div:first-child p{
        font-size:18px;
        color:#fff;
        margin-right:19px;
    }
    .heaG>div:nth-child(2){
        position:absolute;
        width:126px;height:125px;
        background-color:#fff;
        border-radius:5px;
        left:2.9rem;top:1.5rem;
        text-align:center;
    }
    .heaG>div:nth-child(2) img{
        margin-top:1rem;
        margin-bottom:.5rem;
    }
    .heaG>div:nth-child(2) h3{
        font-size:22px;
        margin-bottom:.6rem;
    }
    .heaG>div:nth-child(3){
        position:absolute;
        width:240px;height:135px;
        top:7px;right:2rem;
        background-color:rgba(0,0,0,0.7);
        padding:14px;
        color:#fff;
        text-align:center;
    }
    .heaG>div:nth-child(3) h1{
        font-size:18px;
        margin-bottom:14px;
    }
    .heaG>div:nth-child(3) p{
        font-size:14px;
        margin-bottom:8px;
    }
    .action{
        margin-top:1rem;
    }
    .action a.acta:last-child{
        border-bottom:0;
        margin-bottom:2rem;
    }
    .acta{
        display: inline-block;
        color:#000;padding-top:18px;
        width:900px;height:152px;
        border-bottom:1px dashed #DDDDDD;
    }
    .acta:hover{
        background-color:#F9F9F9;
    }
    .acta div,.acta img{
        float:left;
    }
    .acta div{
        margin-left:1rem;
    }
    .acta h1{
        font-size:18px;
        margin-bottom:20px;
    }
    .acta p{
        font-size:14px;
        margin-bottom:16px;
    }
    .acta div a{
        display:inline-block;
        padding:7px 5px;
        color:#A59999;
        margin-right:7px;
        background-color:#F8F8F8;
    }
    .acta div a.a{
        background-color:#F2F6ED;
        color:#799374;
    }
    .acta div a.b{
        background-color:#F0F4F8;
        color:#6783BF;
    }
    .acta div.right{
        float:right;
        margin-right:12px;
    }
    .acta div.right p{
        font-size:14px;
        color:#666;
        margin-top:2.5rem ;
    }
    .acta div.right p span{
        font-size:24px;
        color:#EB6001;
    }
    .f1,.f2,.f3{border:1px solid #ccc;}
    .f1 img,.f2 img,.f3 img,.f4 img{width:100%;}
    .f1 h2{font-size:18px;padding:12px 24px 0;float:left;} 
    .f1>a.a{color:#666;float:right;padding:15px 24px 0 0;}
    .f1>a.a:hover{color:#EB6001;}
    .f1>a.p15:hover{background-color:#F9F9F9;}
    .f1>a.p15 h4{color:black;font-size:14px;margin-top:14px;}
    .f1>a.p15 p {margin-top:7px;padding-bottom:14px;border-bottom:1px dashed #DDDDDD;color:#EB6001;font-size:16px;}
    .f1>a.p15 p span{font-size:14px;}
    .f2,.f3,.f4{margin-top:1rem;}
    .f2 h3{font-size:18px;color:black;margin-bottom:20px;}
    .f2 p{font-size:14px;color:#666;margin-top:12px;margin-bottom:14px;}
    .f2 p span{color:#EB6001;}
    .f2 img,.f3 img{margin-bottom:1rem;}
    .f4 ul{ display:inline-block;width:1400px;height:200px;transition:all .5s linear;}
    .f4 ul li{display:inline-block;}
    .f4 a.a{position: absolute;z-index:999;opacity:0;font-size:24px;top:50%;margin-top:-12px;}
    .f4 a.b{right:34px;}
    .f4{overflow: hidden;padding:24px;border:1px solid #DDDDDD;position:relative; }
    .f4>div.p15:hover ~ a.a{
        opacity:1;
    }
    .f4 a.a:hover{opacity: 1;color:#EB6001}
    .f4 div.p15{
        padding:0 ;
        width:200px;height:200px;
        overflow: hidden;}
</style>
