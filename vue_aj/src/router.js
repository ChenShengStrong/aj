import Vue from 'vue'
import Router from 'vue-router'

import Container from './components/container.vue'
// 登录模块
import Login from './views/Login.vue'
import houseList from './components/houseListNav.vue'
import detail from "./components/detail_center.vue"
import Verify from "./components/Verify.vue"
Vue.use(Router);

export default new Router({
  routes: [
    {path:"/",component:Container},
    {path:"/login",component:Login},
    {path:"/houselist",component:houseList},
    {path:"/detail",component:detail},
    {path:"/verify",component:Verify},
  ]
})