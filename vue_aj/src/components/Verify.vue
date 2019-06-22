<template>
  <div class="container" ref="container">
    <!-- 滑块 -->
    <div class="slider" ref="slider">
		>>
    </div>
    <!-- 文本 -->
    <p ref="text">向右滑动</p>
    <!-- 被滑过的部分 -->
    <div class="shadow" ref="shadow">
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return{
      isSuccess :false,//检查是否成功
      shadowStyle:"",
    }
  },
  methods:{
      
  },
  mounted(){
    this.$nextTick(()=>{
    
    var container = this.$refs.container
    var text = this.$refs.text
    var shadow = this.$refs.shadow
    var slider = this.$refs.slider
      console.log(container)
      console.log(text)
      console.log(shadow)
      console.log(slider)
      this.isSuccess=false;
    slider.onmousedown = function(e) {   //按下滑块
        var downX = e.clientX;        
        slider.onmousemove = function(event) {     //移动滑块
            var moveX = event.clientX - downX;
            if(moveX > 0) {
                shadow.style.width = moveX + 'px';
                this.style.left =  moveX + 'px';
                if(moveX >= (container.offsetWidth - this.offsetWidth)) {   
                    text.innerText = "通过";
                    shadow.style.background="#0f0"
                    this.isSuccess = true;
                    this.onmousemove = null;   //当通过时，清除鼠标移动事件
                    this.onmousedown = null;    //当通过时，清除鼠标按下事件
                }
            }
            
       }
    }
 
    slider.onmouseup = function(event) {
        this.onmousemove = null;  
        if(this.isSuccess) return;   //如果成功，直接退出
        this.style.left = 0;
        shadow.style.width = 0;
    }
  

    })
  }
}
</script>

<style scoped>
.container{
    width: 240px;
    height: 40px;
    background: #e9e6e9;
    position: relative;
}
.container p{
    position: absolute;
    top:30%;
    left: 45%;
    z-index: 5;
}
.shadow{
    position: absolute;
    height: 40px;
    background: rgb(255, 47, 220);
}
.slider{
    background: #fff;
    border: 1px solid #adadc2;
    width: 50px;
    height: 40px;
    box-sizing: border-box;
    position: absolute;
    z-index: 20;
    background-size: 100% 100%;
		text-align:center;
		line-height:36px;
}
</style>
