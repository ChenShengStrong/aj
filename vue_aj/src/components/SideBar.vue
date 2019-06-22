<template>
  <div class="container">
    <!-- 侧边选项 -->
    <div class="sidebar">
      <div class="sidebar-nav">
        <a href="javascript:;" class="sid-nav">
          <span class="iconfont iconfont22 icon-kefu"></span>
          <p class="m3">客服</p>
          <em class="nav-arrow"></em>
          <div class="sidebar-hover">在线客服</div>
        </a>
        <a href="javascript:;" class="sid-nav">
          <span class="iconfont iconfont22 icon-maifangrenminbifangzixianxing"></span>
          <p class="m3">卖房</p>
          <em class="nav-arrow"></em>
          <div class="sidebar-hover">房东卖房</div>
        </a>
        <a href="javascript:;" class="sid-nav">
          <span class="iconfont iconfont22 icon-bangzhu-"></span>
          <p class="m3">帮助</p>
          <em class="nav-arrow"></em>
          <div class="sidebar-hover">使用帮助</div>
        </a>
        <a href="javascript:;" class="sid-nav">
          <span class="iconfont iconfont22 icon-tiaoyan"></span>
          <p class="m3">调研</p>
          <em class="nav-arrow"></em>
          <div class="sidebar-hover">用户调研</div>
        </a>
        <a href="javascript:;" class="sid-nav">
          <span class="iconfont iconfont22 icon-saoma"></span>
          <p class="m3">下载</p>
          <em class="nav-arrow nav-sao"></em>
          <div class="sidebar-hover sidebar-sao">下载安居克APP</div>
        </a>
        <a href="javascript:;" class="sid-nav">
          <span class="iconfont iconfont22 icon-laba"></span>
          <p class="m3">推广</p>
          <em class="nav-arrow"></em>
          <div class="sidebar-hover">推广咨询</div>
        </a>
      </div>
    </div>
    <!-- 侧边会到顶部 -->
    <div class="side-top">
      <a href="javascript:;" class="sid-nav">
        <span class="iconfont iconfont22 icon-icon_huaban"></span>
        <em class="nav-arrow"></em>
        <a style="display:inline-block" href="#" class="sidebar-hover">返回顶部</a>
      </a>
    </div>
  </div>
</template>

<script>
export default {
  data(){
    return{

    }
  }
}
</script>

<style scoped>
.sidebar{
    right: 0px;
    display: block;
    position: fixed;
    top: 0;
    width: 38px;
    height: 100%;
    background-color: #f7f7f7;
    box-shadow: 0 0 2px #999;
    z-index: 1000;
    font-family: "Hiragino Sans GB","Microsoft YaHei","微软雅黑",tahoma,Arial,simhei;
}
.sidebar-nav{
  position: absolute;
  right: 0;
  top: 40%;
  margin-top: -98px;
}
.sidebar-nav .sid-nav{
    position: relative;
    display: block;
    width: 38px;
    height: 40px;
    margin-bottom: 12px;
    text-align: center;
    color: #333;
    font-size: 12px;
}
.nav-arrow{
    content: '';
    width: 0;
    height: 0;
    overflow: hidden;
    border-left: 4px solid #666;
    border-right: 4px solid transparent;
    border-top: 4px solid transparent;
    border-bottom: 4px solid transparent;
    position: absolute;
    top: 16px;
    left: 0;
    display: none;
}
.sidebar-hover{
    position: absolute;
    right: 38px;
    top: 0;
    width: 0;
    height: 40px;
    line-height: 40px;
    background-color: #666;
    text-align: center;
    color: #fff;
    font-size: 14px;
    overflow: hidden;
    transition:width .2s;
}
.sidebar-nav .iconfont22{
    font-size: 20px;
    margin-top: 2px;
}
.sidebar-nav .iconfont{
    height: 20px;
    line-height: 20px;
}

.m3{
  margin: 3px;
}
.sid-nav:hover{
    background-color: #62ab00;
    color: #fff;
    text-decoration: none;
}
.sid-nav:hover .nav-arrow{
  display:block;
}
.sid-nav:hover .iconfont{
  color:#fff;
}
.sid-nav:hover .sidebar-hover{
  width:90px;
}
.sid-nav:hover .sidebar-sao{
  width: 130px;
}
.nav-sao{
    border-left: 4px solid #fff;
}
.sidebar-sao{
  color: #333;
  top: -55px;
  width: 0;
  height: 36px;
  padding-top: 114px;
  background-image: url(../../public/pc-sidebar.png);
  background-size: cover;
}
.side-top{
    position: fixed;
    display: block;
    bottom: 30px;
    right: 0;
    z-index: 1000;
}
.iconfont{
    color: #000;
    text-align: center;
    font-style: normal;
    display: inline-block;
    vertical-align: middle;
    font-family: 'iconfont';
}
.side-top .iconfont{
  height: 20px;
  line-height: 20px;
  font-size: 20px;
  margin-top: 10px;
}
.side-top .sid-nav{
    position: relative;
    display: block;
    width: 38px;
    height: 40px;
    margin-bottom: 12px;
    text-align: center;
    color: #333;
    font-size: 12px;
}
</style>

