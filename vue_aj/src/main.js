import Vue from 'vue'
import App from './App.vue'
import router from './router'
import store from './store'
//引入axios.js
import axios from './axios'

//引入页头，页尾，侧边栏
import Footer from './components/Footer.vue'
import Header from './components/Header.vue'
import SideBar from './components/SideBar.vue'

//注册为全局组件
Vue.component('myHeader',Header)
Vue.component('myFooter',Footer)
Vue.component('mySide',SideBar)

Vue.config.productionTip = false

new Vue({
  router,
  store,
  render: h => h(App)
}).$mount('#app')
