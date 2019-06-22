//引入axios库并且配置
//1:引入Vue
import Vue from 'vue'
//引入axios
import axios from 'axios'
//设置跨域请求保存session
axios.defaults.withCredentials=true
//设置请求服务器基本路径
axios.defaults.baseURL="http://127.0.0.1:3000"
//将axios注册为vue的示例
Vue.prototype.axios=axios