<template>
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
      <img src="../assets/footer/beianbgs.png" alt="备案">沪公网安备 31011502002260号<br>
      <a class="a1" href="javascript:;"><img src="../assets/footer/jubao_logo.png" alt="举报"></a>
      <a class="a2" href="javascript:;"><img src="../assets/footer/gongshang_125x60.png" alt="工商"></a>
      <a class="a3" href="javascript:;"><img src="../assets/footer/police_110x60.png" alt=""></a>
      <a class="a4" href="javascript:;"><img src="../assets/footer/cnnic.png" alt="身份验证"></a>
    </div>
  </div>
</template>

<style scoped>
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
  .foot-msg>img{
    margin-left: 42%;
    width: 20px;
    height: 20px;
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
  div.foot-msg>a>img{
    width: 100%;
    height: 100%;
    
  }
  .a1,.a2,.a3,.a4{
    margin-right: 1rem;
  }
  div.foot-msg>.a1{
    border: 1px solid #e6e6e6;
    width: 127px;
    height: 62px;
    margin-left:30%;
  }
  div.foot-msg>.a2{
    width: 125px;
    height: 60px;
  }
  div.foot-msg>.a3{
    width: 110px;
    height: 60px;
  }
  div.foot-msg>.a4{
    width: 127px;
    height: 47px;

  }
</style>

<script>
export default {
  data(){
    return{

    }
  }

}
</script>



