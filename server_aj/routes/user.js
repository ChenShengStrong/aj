//引入express
const express=require('express');
//引入连接池对象
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();
//添加路由

    // 注册路由
    router.get("/reg",(req,res)=>{
        var sql="INSERT INTO aj_user SET ?";
		req.query.uname=parseInt(Math.random()*99999)
		req.query.upwd=parseInt(Math.random()*99999)
        pool.query(sql,[req.query],(err,result)=>{
            if(err) throw err;
            if(result.affectedRows>0){
                res.send({code:1,uname:req.query.uname,msg:"注册成功"});
            }else{
                res.send({code:-1,msg:"注册失败"});
            }
        })
    });

    // 登录路由
    router.get("/login",(req,res)=>{
      var uname=req.query.uname;
      var upwd=req.query.upwd;
        
      var sql="SELECT * FROM aj_user WHERE uname=? AND upwd=?"
      pool.query(sql,[uname,upwd],(err,result)=>{
        if(err) throw err;
        if(result.length>0){
            res.send({code:1,msg:"登录成功"})
        }else{
            res.send({code:-1,msg:"用户名或密码错误"})
        }
      })
    });
    // 删除
    router.get("/delete",(req,res)=>{
        var id=req.query.id
        var sql="DELETE FROM aj_user WHERE id=?"
        pool.query(sql,[id],(err,result)=>{
            if(err) throw err
            if(result.affectedRows>0){
                res.send({code:1,msg:"删除成功"});
            }else{
                res.send({code:-1,msg:"删除失败"});
            }
        })
    });

module.exports=router;