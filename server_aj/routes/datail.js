const express = require("express");
const pool = require("../pool.js");
const router = express.Router();

router.get("/newhouse",(req,res)=>{
    // 获取newhouse
    // var url=req.query.name;
    // if(url!=undefined){
    // console.log(url);}
    var sql = "select * from aj_new_house"
    pool.query(sql,[],(err,result)=>{
        if(err) throw err;
        res.send(result);
    });
})
module.exports=router;