<template>
  <div class="container">
    <!-- 登录页顶端 -->
    <div class="user-nav">
      <a href="javascript:;" class="nav-link">
        <i class="iconfont icon-anjukelogo1"></i>
      </a>
    </div>
    <!-- 中间内容 -->
    <div class="content" style="width:100%">
      <div class="login-wrap">
        <div class="login-content">
          <div class="head">
            <h3>登录安居客</h3>
          </div>
          <div class="form-content">
            <div class="form-top">
              <a href="javascript:;" :class="loadStylePhone?'col':''" @click="changeLoad">手机快捷登录或注册</a>
              <i></i>
              <a href="javascript:;" :class="loadStylePhone?'':'col'" @click="changeLoad">账号密码登录</a>
            </div>
            <!-- 手机方式验证 -->
            <div v-show="loadStylePhone">
              <div class="form-wrap">
                <!-- 手机号验证提示信息 -->
                <p class="err" :style="phoneColor">{{phoneMsg}}</p>
                <div class="phone">
                  <i class="iconfont icon-shouji"></i>
                  <i class=split></i>
                  <input type="text" placeholder="请输入手机号码" maxlength="11" class="ipt" v-model="phoneValue">
                  <!-- 验证占位标签 -->
                  <i class="hidden"></i>
                 </div>
              </div>
               <div class="form-wrap" style="position:relative">
                <!-- 验证码验证提示信息 -->
                <p class="err" :style="codeColor" >{{codeMsg}}</p>
                <div class="phone w232">
                  <i class="iconfont icon-suo"></i>
                  <i class=split></i>
                  <input type="text" placeholder="请输入验证码" maxlength="6" class="ipt w180" v-model="phone_check1">
                  <!-- 验证占位标签 -->
                  <i class="hidden"></i>
                </div>
              <a href="javascript:;" class="sms-btn" @click="click_create">获取验证码</a>

              <div style="width:100px;height:50px;position:absolute;top:22px;right:80px;"><canvas id="c1" width="100" height="50" ref="mycanvas"></canvas></div>
            </div>
             <div class="check-item">
              <label>
                <input type="checkbox" v-model="checked">
                <span>我已阅读并接受</span>
              </label>
              <a href="javascript:;">《安居客用户服务协议》</a>及
              <a href="javascript:;">《安居客隐私权政策》</a>
            </div>
            <button @click="phoneLogin" class="submit-btn" :disabled="!checked" :class="checked?'':'submit-btn-disable'">立即登录</button>
          </div>
            </div>
             <!-- 账号验证 -->
              <div v-show="loadStylePerson">
                <div class="form-wrap">
              <!-- 账号提示信息 -->
                <p class="err" v-show="false">您输入的账号不存在</p>
                <div class="phone">
                  <i class="iconfont icon-yonghu"></i>
                  <i class=split></i>
                  <input type="text" placeholder="请输入账号" maxlength="11" class="ipt">
                  <!-- 验证占位标签 -->
                  <i class="hidden"></i>
                 </div>
              
             
           
            <div class="form-wrap" style="position:relative">
              <!-- 密码提示信息 -->
              <p class="err" >{{pwdMsg}}</p>
              <div class="phone">
                <i class="iconfont icon-suo"></i>
                <i class=split></i>
                <input type="text" placeholder="请输入密码" maxlength="6" class="ipt" v-model="phone_check1" >
                <!-- 验证占位标签 -->
                <i class="hidden"></i>
              </div>
               </div>
              </div>
            <div class="check-item">
              <label>
                <input type="checkbox" v-model="checked">
                <span>我已阅读并接受</span>
              </label>
              <a href="javascript:;">《安居客用户服务协议》</a>及
              <a href="javascript:;">《安居客隐私权政策》</a>
            </div>
            <button class="submit-btn " :disabled="!checked" :class="checked?'':'submit-btn-disable'">立即登录</button>
         </div>
        </div>
        <!-- 微信登录 -->
        <div class="weixin">
          <p class="line"></p>
          <p class="doc">
            <span>其他账户登录</span>
          </p>
        </div>
        <div class="other">
          <a href="javascript:;" class="weichat iconfont icon-weixin"></a>
        </div>
      </div>
    </div>
    <!-- 页面底部 -->
    <div class="footer">
      <ul class="foot-list">
        <li id="li1"><a href="javascript:;">关于安居克</a>|</li>
        <li><a href="javascript:;">联系我们</a>|</li>
        <li><a href="javascript:;">用户协议</a>|</li>
        <li><a href="javascript:;">房贷计算器</a>|</li>
        <li><a href="javascript:;">最新问答</a>|</li>
        <li><a href="javascript:;">网站地图</a>|</li>
        <li><a href="javascript:;">最新房源</a>|</li>
        <li><a href="javascript:;">其他城市</a>|</li>
        <li><a href="javascript:;">友情链接</a>|</li>
        <li><a href="javascript:;">放心搜</a>|</li>
        <li><a href="javascript:;">推广服务</a>|</li>
        <li><a href="javascript:;">渠道招商</a>|</li>
        <li><a href="javascript:;">58车</a></li>
      </ul>
      <div class="foot-msg">
        <a href="javascript:;">客户服务中心</a>
        违法信息举报：4006209008 
        <a href="javascript:;">service@58.com</a>
         Copyright © 2019-2021 www.anjuke.com All Rights Reserved
        <a href="javascript:;">ICP号：沪 B2-20190601</a><br>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      phoneMsg:"",
      phoneValue:"",
      loadStylePhone:true,//登录方式转换手机
      loadStylePerson:false,//登录方式转换账号
      codeColor:"",
      phoneColor:"",
      codeMsg:"",
      checked:true,
      phone_check0:"",//随机验证码
      phone_check1:"",//用户输入验证码
      pwdMsg:""
    }
  },
  methods:{
    phoneLogin(){
      if(this.phoneValue==""){
        this.phoneMsg="手机号不能为空"
      }
      else if(this.phone_check1==""){
        this.codeMsg="验证码不能为空"
      }else if(this.codeMsg!=="请输入正确的验证码"&&this.phoneMsg!="请输入正确的手机号"){
          this.axios.get("/user/reg",{
          params:{phone:this.phoneValue}
        }).then((result)=>{
          if(result.data.code==1){
            alert(result.data.msg)
            sessionStorage.setItem("uname",result.data.uname)
            this.$router.push("/")
          }
        })
      }
    },
    changeLoad(){
      if(this.loadStylePhone==false){
        this.loadStylePhone=true
        this.loadStylePerson=false
      }else{
        this.loadStylePhone=false
        this.loadStylePerson=true
      }
    },
    click_create(){
      this.create()
    },
    create(){
      		//获取canvas
        var c1=document.getElementById("c1");
        //获取画笔
        var ctx=c1.getContext("2d")
        //获取宽高，JS也可设定
        var width=c1.width
        var height=c1.height
          //保存验证码的数组
        var newArr=new Array();
        //生成随机数函数
        function rand(){
          //保存随机数的数组
          var arr= [1,2,3,4,5,6,7,8,9,0,'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z'];
          var num=Math.floor(Math.random()*arr.length)
          newArr[0]=arr[num]
          //每次调用不产生重复
          arr.splice(num,1)
          return newArr[0]
          
        }

        //生成干扰线函数
        function line(canvas,ctx){
          ctx.beginPath();
          ctx.moveTo(Math.floor(Math.random()*width),Math.floor(Math.random()*height))
          ctx.lineTo(Math.floor(Math.random()*width),Math.floor(Math.random()*height))
          ctx.lineWidth=1;
          //随机颜色
          var rgb=`rgb(${Math.floor(Math.random()*255)},${Math.floor(Math.random()*255)},${Math.floor(Math.random()*255)})`
          ctx.lineWidth=2
          //设置画笔颜色
          ctx.strokeStyle=rgb;
          ctx.stroke()
          ctx.closePath()
        }


          //清画布
          ctx.clearRect(0,0,600,600)
          //循环画干扰线
          for(var i=0;i<20;i++){
            line(c1,ctx)
          }
          //清空phone_check0
            this.phone_check0=""
          //循环产生随机数字
          for(var i=0;i<4;i++){
            //设置字体大小和类型
            ctx.font="30px 黑体"
            //保存画笔
            ctx.save()
            var deg=1-Math.random()*2
            deg*=8
            var newStr=rand()
            ctx.fillText(newStr,i*25,30)
            //释放画笔
            ctx.restore()
            //收集验证码字符串，方便下面验证
            this.phone_check0+=newStr;
          }
    }
  },
  mounted(){
    this.create()
  },
  watch:{
    phone_check1(){
      if(this.phone_check0.toUpperCase()==this.phone_check1.toUpperCase()){
        this.codeMsg="验证码正确"
        this.codeColor="color:green"
      }else{
        this.codeMsg="请输入正确的验证码"
        this.codeColor=""
      }
    },
    phoneValue(){
      var reg=/1[3-8]\d{9}/g
      if(reg.test(this.phoneValue)){
        this.phoneMsg="手机号正确"
        this.phoneColor="color:green"
      }else{
        this.phoneMsg="请输入正确的手机号"
        this.phoneColor=""
      }
    }
  }
}
</script>

<style scoped>
/* 顶部导航 */
.user-nav{
  height: 70px;
  line-height: 70px;
  margin: 0 auto;
  position: relative;
  width: 1180px;
}
a{
  color:#666
}
.iconfont{
  color: #39A631;
  font-size: 110px;
  display: inline-block;
  padding-top: 4px;
  font-style: normal;
  -webkit-font-smoothing: antialiased;
  -webkit-text-stroke-width: 0.2px;
  font-size: 31px;
}
.content{
  position: relative;
  height: 706px;
  background: url(../assets/login/bg.jpg) center center no-repeat;
  background-color: #fbfbfb;
  border-top: 2px solid #63ad02;
}
.content .login-wrap{
    margin: 0 auto;
    margin-top: 70px;
    width: 600px;
    height: 480px;
    position: relative;
    left: 0;
    top: 0;
    padding: 0 20px 20px;
    background: #fff;
    box-shadow: 0 0 8px #888;
    border-radius: 5px;
    z-index: 1003;
    overflow: hidden;
    box-sizing: border-box;
    padding-left: 60px;
}
.login-content{
  position: relative;
  width: 600px;
}
.head{
    padding: 10px 2px 0 7px;
    font-size: 22px;
    line-height: 48px;
    color: #62ab00;
    border-bottom: 2px solid #62ab00;
}
.head h3{
  display: inline-block;
  font-weight: normal;
}
.form-content{
    margin-left: 0;
    padding-left: 10px;
}
.form-top{
  margin-top: 26px;
  width: 390px;
  font-size: 16px;
  text-align: center;
}
.form-top .col{
  color: #62ab00;
}
.form-top a{
  font-size: 16px;
  text-decoration: none;
  color: #666;
}
.form-top i{
    margin: 0 48px;
    position: relative;
    top: 3px;
    display: inline-block;
    width: 1px;
    height: 16px;
    background: #ccc;
}
.form-wrap{
    margin-top: 6px;
}
.err{
  font-size: 12px;
  width: 100%;
  height: 20px;
  line-height: 20px;
  color: #df3f3f;
  margin-bottom: -6px;
}
.phone{
  width: 382px;
  height: 48px;
  font-size: 0;
  color: #666;
  border: 1px solid #ccc;
  display: inline-block;
  padding-left: 16px;
}
.form-wrap .iconfont{
  font-size: 22px;
  color: #ccc;
  vertical-align: top;
  width: 24px;
  height: 28px;
  margin-top: 10px;
}
.split{
    margin: 10px 0 0 12px;
    font-size: 0;
    display: inline-block;
    width: 1px;
    height: 30px;
    background: #ccc;
    vertical-align: top;
}
.ipt{
    padding: 15px 0 15px 15px;
    width: 327px;
    font-size: 14px;
    height: 18px;
    line-height: 18px;
    color: #666;
    border: 0;
    vertical-align: top;
}
.submit-btn-disable{
    background: #ddd !important;
}
input{
   outline: none;
  font-family: "Microsoft YaHei", "宋体", Arial, "\5B8B\4F53", Helvetica, sans-serif;
}
.w232{
  width:232px!important;
}
.w180{
   width:180px!important;
}
.sms-btn{
  margin-left: 10px;
  display: inline-block;
  width: 138px;
  height: 48px;
  line-height: 48px;
  border: 1px solid #62ab00;
  font-size: 14px;
  color: #62ab00;
  text-align: center;
  vertical-align: top;
  margin-top: 10px;
}
.sms-btn:hover{
    color: #fff;
    background: #62ab00;
   
}
.check-item{
    margin-top: 25px;
    width: 400px;
}
.check-item input{
  margin-right: 10px;
  width: 15px;
  height: 15px;
}
.check-item label{
    font-size: 14px;
    vertical-align: middle;
}
.check-item a{
    font-size: 14px;
    color: #136ccd;
    vertical-align: middle;
}
.submit-btn{
    margin-top: 10px;
    padding: 0;
    display: block;
    font-size: 16px;
    color: #fff;
    text-align: center;
    width: 400px;
    height: 50px;
    line-height: 50px;
    background: #62ab00;
    border: none;
    outline: none;
    text-decoration: none;
    font-family: "Microsoft YaHei", "宋体", Arial, "\5B8B\4F53", Helvetica, sans-serif;
    cursor: pointer;
}
.weixin{
  margin: 26px 0 0 10px;
  width: 400px;
}
.weixin .line{
  width: 400px;
  height: 1px;
  border-bottom: 1px solid #ededed;
}
.weixin .doc{
  margin-top: -10px;
  font-size: 14px;
  line-height: 20px;
  color: #ccc;
  text-align: center;
} 
.weixin .doc span{
    background: #fff;
    padding: 0 16px;
}
.other{
  width: 420px;
  text-align: center;
}
.other a{
    margin: 0 8px;
    display: inline-block;
    width: 44px;
    height: 44px;
    font-size: 42px;
}
.other .weichat{
  color: #54a828;
}
/* 页面底部 */
 .footer{
      margin: 30px auto 0;
      padding-top: 15px;
      width: 100% ;
      border-top: 1px solid #e6e6e6;
      font-size: 12px;
      color: #333;
    }
    .footer a:hover{
      color: orange;
      text-decoration: underline;
    }
    ul.foot-list{
      width: 80%;
      margin:0 auto; 
      display: flex;
    }
    ul.foot-list>li{
      margin-left:5px;
    }
    ul.foot-list>li:first-child{
      margin-left: 23.5%;
    }
    ul.foot-list>li>a{
      color: #333;
      margin-right: 5px;
    }
    .foot-msg{
      width: 80%;
      margin: 0 auto;
    }
    .foot-msg>a{
      color: #333;
      display: inline-block;
      margin-top: 30px;
      margin-bottom: 20px;
    }
    .foot-msg>a:first-child{
      margin-left: 21.5%;
    }

    
</style>

