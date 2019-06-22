const  express=require('express');
const bodyParser=require('body-parser');
const userRouter=require('./routes/user.js');
const admin=require('./routes/admin.js');
const newHouse=require('./routes/newHouse.js');
const oldHouse=require('./routes/oldHouse.js');
const detail=require("./routes/datail.js");
const container=require("./routes/container.js");
//引入跨域模块
const cors=require('cors')
var server=express();
server.listen(3000);
server.use(cors({
  origin:['http://127.0.0.1:8080','http://localhost:8080'],
  credentials:true //是否带证书验证	
}))
//引入session对象
const session=require("express-session")
//使用中间件设置session对象
server.use(session({
  secret:'128位字符串',//安全字符，根据字符串将数据保存为128位字符串
  resave:true,//每次请求都更新页面
  saveUninitialized:true,//保存初始化的值
  cookie:{maxAge:1000*60*2}
}))

//托管静态资源到public目录下
server.use( express.static('public') );

server.use(bodyParser.urlencoded({
	extended:false
}));

//挂载路由器
server.use( '/user',userRouter );
server.use( '/admin',admin );
server.use( '/newhouse',newHouse );
server.use( '/oldhouse',oldHouse );
server.use( '/detail',detail );
server.use( '/container',container);