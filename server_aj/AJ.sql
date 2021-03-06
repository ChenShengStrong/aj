SET NAMES UTF8;
DROP DATABASE IF EXISTS aj;
CREATE DATABASE aj CHAR SET UTF8;
USE aj;


 #用户信息表
CREATE TABLE aj_user(
  id INT  PRIMARY KEY AUTO_INCREMENT,  #编号
  uname VARCHAR(16),    # 登录名
  upwd  VARCHAR(32),    # 登录密码
  sex INT,              # 性别
  phone VARCHAR(11),    # 电话
  email VARCHAR(30),    #邮箱
  user_name VARCHAR(8), # 真实姓名
  addr VARCHAR(50)	#地址
);
INSERT INTO aj_user VALUES(NULL,"dingding","123456",1,"18165657458","ding@163.com","丁雷","河南省郑州市金水区");
INSERT INTO aj_user VALUES(NULL,"dangdang","123456",1,"18165657561","dang@163.com","李党","河南省郑州市二七区");
INSERT INTO aj_user VALUES(NULL,"doudou","123456",1,"18165652573","dou@163.com","豆豆","河南省郑州市管城区");

#首页 轮播图 信息表
CREATE TABLE aj_index_carousel(
  id INT PRIMARY KEY AUTO_INCREMENT,  #
  title VARCHAR(50),                  #主标题
  sub_title VARCHAR(50),              #副标题
  unit_price DECIMAL(10,2),           #单价
  area  VARCHAR(50),                  #面积
  pic  VARCHAR(100)                   #图片路径
);





#房屋家族表
CREATE TABLE aj_house_family(
  id INT PRIMARY KEY AUTO_INCREMENT, #类型编号
  fname VARCHAR(20)	             #类型名称
);
INSERT INTO aj_house_family VALUES(NULL,"新房");
INSERT INTO aj_house_family VALUES(NULL,"二手房");
INSERT INTO aj_house_family VALUES(NULL,"出租房");

 #二手房信息表
CREATE TABLE aj_old_house(
  id INT PRIMARY KEY AUTO_INCREMENT,  #编号
  fid INT ,                           #所属类型
  title VARCHAR(20),                  #标题
  xiaoq VARCHAR(50),                  #所属小区
  apartment VARCHAR(30),              #户型
  proce  INT,                         #参考总价
  unit_price DECIMAL(10,2),           #单价
  posi   VARCHAR(100),                #区域位置
  addres VARCHAR(100),                #楼盘地址
  volume VARCHAR(20),                 #建筑面积
  payment  DECIMAL(10,2),             #参考首付
  creat_time VARCHAR(20),             #建造年代
  chaoxiang  VARCHAR(10),             #朝向
  Monthly INT,                        #参考月供
  house_type VARCHAR(20),             #房屋类型
  floor VARCHAR(20),                  #所在楼层
  renovation VARCHAR(20),             #装修程度
  houseTime  INT,                     #产权年限
  isElevator INT,                     #是否配有电梯  0：没有  1:有
  houseBook  VARCHAR(20),             #房本年限
  property VARCHAR(20),               #产权性质
  isOnlyHouse INT,                    #唯一住房     0：不是  1：是 
  isFirstHouse INT,                   #一手房源     0：不是  1：是
  sell VARCHAR(500),                  #卖点（核心竞争力）
  menMentality  VARCHAR(500),          #业主心态 
  pic  VARCHAR(100)
    
);

INSERT INTO aj_old_house VALUES(NULL,2,"二七新城运河旁  鑫苑名城  急转员工内购房  保上省实验","鑫苑名城","三室两厅一卫","115","12921","二七-嵩山路","嵩山南路","89","34.50","2018","南北","6773","普通住宅","中层(共33层)","毛坯","70","1","不满两年","商品房","0","1","1，此批房源一共100套，全部是首批员工认购房，内部名额加上员工优惠，合计比较划算，售楼部售价13500左右，此批房源售价在12000左右，直接转出。<br>2，户型有89平，通透三房，连廊设计。115平边户跟朝南连廊设计、140平四房边户户型<br>3，配套：省实验小学，市区内比较不错的学校了","1，诚心出售，随时看房，价格面议<br>2，手续齐全，直接网签","http://127.0.0.1:3000/oldHouse_pic/403x274(1).jpg");

INSERT INTO aj_old_house VALUES(NULL,2,"泰宏建业国际城，80平两室70W，机关团购房，需全款，现房！","泰宏建业国际城12号院","两室两厅一卫","80","10000","二七-二七周边","杏贾路,近大学南路","80","24.00","2018","南","3664","普通住宅","中层(共32层)","毛坯","70","1","满五年","商品房","1","1","1、户型结构：2室1厅1卫，建筑面积80平，采光充足，通风效果好。<br>2、装修情况：精装修，拎包入住；<br>3、税费方面：产权满两年<br>4、产权方面：房产证、土地证权属清晰，无债权债务，可以随时过户","业主因工作需要动迁，以前房子都是自住，对房子比较爱惜，先忍痛割爱出售这套房子，可随时安排您看房，另注重表示价位可以坐下来详谈！","http://127.0.0.1:3000/oldHouse_pic/403x274(2).jpg");

INSERT INTO aj_old_house VALUES(NULL,2,"内.部.价！！万科团购房 准现房精装修 万达旁 直接认购","万科天伦紫台","3室2厅1卫","106","12362","惠济-开元路","大河路,近文化北路","86","31.80","2018","南北","6243","普通住宅","中层(共31层)","精装修","70","1","不满两年","商品房","0","1","项目地址：惠济区文化路大河路东南角<br>现3期在售<br>三所旁，人文华宅<br>3期一共1698户，10栋高层","项目周边四纵三横两环线四纵：京沙二期、花园路、文化路、中州大道三横：大河路、连霍高速、北三环两环线：北四环、北三环周边公共交通：公交：90路、95路(火车站）、156路（商务内环路众意路）、962路、Y820路<br>幼儿园<br>惠济区实验幼儿园<br>中小学<br>文化路*小学、郑州市四中、郑州市第七十九中等。项目周边已经建成使用的有惠济区实验小学、河南省实验小学、河南省实验中学。","http://127.0.0.1:3000/oldHouse_pic/403x274(3).jpg");

INSERT INTO aj_old_house VALUES(NULL,2,"唐宁一号小三房！南龙湖捡漏房！有本满五唯一！人车分流！急售！","基正唐宁1號","3室2厅1卫","90","10052","新郑-新郑龙湖-","新郑快速通道","89.5","27.00","2014","南","4122","普通住宅","中层(共32层)","精装修","70","1","满五年","商品房","1","0","1.地段好，基正唐宁一号位于阳光大道紧邻龙湖一中，近地铁，距离华南城站不超过*车程，出行很方便.<br>2.周边配套有锦艺城，丹尼斯，等大型商业、医疗方面有郑州市第二人民医院和河南省第三人民医院，周边配套成熟.<br>3.品质小区环境优美、超高绿化，小区物业及安保都做到尽职尽责.<br>4.户型很好全明户型设计，每个房间都有窗户，19层中间层，楼间距非常大，视野采光都非常好.<br>5.小区是*人车分流，老人小孩安全有保障，小区住户素质高.<br>综上所述：入住到我们的小区，让您拥有一个温馨满意的家！","我与业主沟通过，业主因为工作调动才忍痛出售此房，并积极配合后期的过户流程及交易手续，房子产权清晰，看房方便。","http://127.0.0.1:3000/oldHouse_pic/403x274(4).jpg");

INSERT INTO aj_old_house VALUES(NULL,2,"南龙湖沙窝里地铁口 紫荆山南路永丰乐城 短时间内开往市区","永丰乐成","3室2厅1卫","90","10112","新郑-新郑龙湖-","祥云路","89","27.00","2019","南","4122","普通住宅","中层(共30层)","毛坯","70","1","满两年","商品房","1","0","项目在紫荆山南路和沙窝里地铁口旁，通往市区非常方便，*近新推出*10号楼，户型非常漂亮推出面积有88/99/107/108/118多种户型共咱选。。。","火爆优惠：一万入会认筹，首付可分期，网签付10%，20%分两年，每一年付一次 ","http://127.0.0.1:3000/oldHouse_pic/403x274(5).jpg");

INSERT INTO aj_old_house VALUES(NULL,2,"（优）康桥品质地铁口学区房龙湖一中对面南北通透","维也纳湖畔","3室2厅1卫","79","8876","新郑-新郑龙湖","龙泊南路","89","23.70","2017","南北","3619","普通住宅","高层（共28层）","精装修","70","1","满五年","商品房","1","1","康桥高品质，康桥自己的物业，南龙湖7盘联动，项目位于阳光大道龙湖一中西侧洋房小区，小区低容积率，高绿化率，居住舒适度高。<br>
交通：地铁2号线小乔站，华南城西站.紫荆山南路.京广快速路，郑新快速路。<br>医院：河南省第二人民医院，新郑市第三人民医院学校：龙湖一中.龙湖实验小学，升达大学等","业主因生意需要急需资金急于出售此房，价格可以商谈，业主配合办手续。","http://127.0.0.1:3000/oldHouse_pic/403x274(6).jpg");

INSERT INTO aj_old_house VALUES(NULL,2,"城南正荣府（大学路）双气精装地铁口，8000多（送车位）","城南正荣府","3室2厅1卫","70","7865","新郑-新郑城区","大学南路","89","21.00","2019","南北","3206","普通住宅","中层(共32层)","精装修","70","1","满五年","商品房","1","1","城南正荣府，全国地产三十强，正荣物业，绿化率35%，容积率2.26，精装交付。<br>1.交通：地铁7号线，大学南路，绕城高速，双湖大道。<br>2.教育：6班制幼儿园，小学，中学，龙湖一中，龙湖镇学校。宜居教育城。<br>3.商业：自带1.5万方商业街，17万方商业综合体。<br>4.医疗：河南省第二人民医院，新郑市第三人民医院。","客厅：方正客厅，空间充裕，当阳光洒落，尽览窗外明媚风景。<br>餐厅：客厅餐厅一线相连，生活方便，活动自油。<br>卧室：主卧室朝南，面积大，居住舒适度；次卧朝北，南气对流。厨房：厨房设计合理，通透敞亮，施展大厨艺，烹制整桌美食。<br>小区环境好绿化率40%，规划地铁线路，人车分流","http://127.0.0.1:3000/oldHouse_pic/403x274(7).jpg");


INSERT INTO aj_old_house VALUES(NULL,2,"新房出售 龙湖锦艺小三房 可包税","龙湖锦艺城","3室2厅1卫","88","10000","新郑-新郑龙湖","双湖东道2号","88","26.40","2014","南","4031","普通住宅","高层(共25层)","精装修","70","0","满两年","商品房","1","0","装修情况：房子精装修可以直接拎包入住<br>楼层位置*楼层，前后无遮挡，采光极好，免费实地来看房子<br>物业环境：小区物业保安非常负责任，每天检查各栋楼的设施安保情况，保障你的住房舒适，温馨，安全。<br>周边设施：附近集贸市场、学校、医院、银行等设施齐全，毗邻公园广场","业主急卖，户型好，价格美丽，楼层好，南北通透，送装修，急卖","http://127.0.0.1:3000/oldHouse_pic/403x274(8).jpg");

#INSERT INTO aj_old_house VALUES(NULL,2,"","","","","","","","","","","","","","","","","","","","","","");



#二手房图片表
CREATE TABLE aj_old_house_pic(
  id INT PRIMARY KEY AUTO_INCREMENT, #编号
  h_id INT,                          #房屋编号
  sm_pic VARCHAR(100),               #小图片
  md_pic VARCHAR(100),               #中图片
  lg_pic VARCHAR(100)		             #大图片
);



#新房信息表 
CREATE TABLE aj_new_house(
  id INT PRIMARY KEY AUTO_INCREMENT, #编号
  title VARCHAR(50), #标题
  sub_title VARCHAR(50), #副标题
  characteristic VARCHAR(100), #楼盘特点
  unit_price VARCHAR(50),   #参考单价
  price DECIMAL(10,2),      # 楼盘价格
  wuyetype  VARCHAR(10),    #物业类型
  developer VARCHAR(30),    #开发商
  posi   VARCHAR(100),      #区域位置
  addres VARCHAR(100),      #楼盘地址
  payment VARCHAR(50),      #最低首付
  Monthly VARCHAR(50),      #月供
  apartment  VARCHAR(50),   #楼盘户型
  opentime  VARCHAR(20),    #最新开盘时间
  deliver   VARCHAR(20),    #交房时间
  saleAddr  VARCHAR(100),  #售楼处地址
  pic  VARCHAR(100)         #图片路径
);

INSERT INTO aj_new_house VALUES(NULL,"朗悦公园府","朗悦公园府","住宅,在售,项目在建,高绿化率,大型社区,学校,南北通透","15500","110~260","住宅","河南朗泰置业有限公司","高新区- 高新区","梧桐街与雪松路交会处","住宅 33 万（首付比例：30%）","住宅 4086.6元 （按最低首付，20年等额本息）","2室户型 (1) ， 3室户型 (5) ， 4室户型 (3) ","2018年9月22日2#3#8","预计2021年9月2、3、8#","郑州市高新区梧桐街与雪松路交会处","http://127.0.0.1:3000/newHouse_pic/newhouse1.jpg");

INSERT INTO aj_new_house VALUES(NULL,"亚新美好艺境","美好艺境","住宅,在售,项目在建,品牌开发商,南北通透,三房朝南","12000","140","住宅","郑州美好艺境置业有限公司","郑东新区- 绿博白沙","郑汴物流通道,近人文路","尚未公开","","3室户型 (2) ， 4室户型 (4) ","2017年12月16日","2020年03月31日","康宁街和心怡路交叉口亚新广场一楼","http://127.0.0.1:3000/newHouse_pic/newhouse2.jpg");

INSERT INTO aj_new_house VALUES(NULL,"和润林湖美景","和润林湖美景","住宅,在售,项目在建,轨交房,装修交付,车位充足,医院","15300","117-192","住宅","郑州和润投资有限公司","中原- 西流湖","郑州市西三环与建设路交会处北200米路东","住宅 35.1 万（首付比例：30%）","
住宅 4346.65元 （按最低首付，20年等额本息）","1室户型 (3) ， 2室户型 (8) ， 3室户型 (7)","最新2019-03-30开盘","2022-05-31交房","郑州市西三环与建设路交会处北200米路东","http://127.0.0.1:3000/newHouse_pic/newhouse3.jpg");

INSERT INTO aj_new_house VALUES(NULL,"亚星金运外滩","亚星金运外滩","住宅,在售,项目在建,品牌开发商,高绿化率,大型社区,学校","13000","104-230","住宅","河南亚星置业集团有限公司","二七- 南三环","南三环,近工人路 ","住宅 31.2 万（首付比例：30%）","住宅 3863.69元 （按最低首付，20年等额本息）","2室户型 (10) ， 3室户型 (14) ， 4室户型 (2) ","2018年6月15日","预计2020年6月30日","南三环工人路交叉口西南角","http://127.0.0.1:3000/newHouse_pic/newhouse4.jpg");

INSERT INTO aj_new_house VALUES(NULL,"亚星盛世云水居","亚星盛世云水居","住宅,在售,今年交房,项目在建,品牌开发商,学校,全朝南","13000","","住宅","河南亚星置业集团有限公司","二七- 南三环","嵩山南路","尚未公开","","2室户型 (1) ， 3室户型 (7) ， 4室户型 (2)","2017年10月27日","预计2019年12月底","嵩山南路长江路亚星盛世销售中心","http://127.0.0.1:3000/newHouse_pic/newhouse5.jpg");

INSERT INTO aj_new_house VALUES(NULL,"保利心语","保利心语晴苑","住宅,待售,多轨交,大平层,品牌开发商,大型社区,车位充足","14500","","住宅","郑州煜盛房地产开发有限公司","中原- 中原万达","中原中路","尚未公开","","1室户型 (1) ， 2室户型 (1) ， 3室户型 (3)","2019-04-06","预计2021年9月底二期交房","中原路与华山路交叉口西北角","http://127.0.0.1:3000/newHouse_pic/newhouse6.jpg");

INSERT INTO aj_new_house VALUES(NULL,"金地滨河风华","金地滨河风华","住宅,待售,项目在建,装修交付,绿色住宅,智能住宅,公园","18000","","住宅","郑州悦江房地产开发有限公司","经济开发区- 滨河国际新城","经开区滨河国际新城经开第十七街与经南十二路交会处","尚未公开","","3室户型 (4) ， 4室户型 (4) ","待定","待定","郑东新区农业南路与商鼎路交叉口向东200米路南","http://127.0.0.1:3000/newHouse_pic/newhouse7.jpg");

INSERT INTO aj_new_house VALUES(NULL,"华南城盛世广场","华南城·盛世广场","商住,在售,大型社区,车位充足,配套纯熟,便利店,商业街","6500","","商住","华南城投资开发有限公司","新郑市- 龙湖","2号地铁线华南城西站东侧","尚未公开","","商住户型 (7)","2019年03月23日","2020年04月20日","郑新快速路与泰山路交叉口 2号线华南城西站口","http://127.0.0.1:3000/newHouse_pic/newhouse8.jpg");

INSERT INTO aj_new_house VALUES(NULL,"御品蔚来云城","御品蔚来云城","住宅,在售,低单价,项目在建,轨交房,智能住宅,大型社区","9360","77-117","住宅","河南御品置业有限责任公司","航空港区- 航空港","航空港区鄱阳湖路与凌风街交叉口西南角","住宅 23.1 万（首付比例：30%）","住宅 2860.62元 （按最低首付，20年等额本息）","1室户型 (3) ， 3室户型 (11) ， 4室户型 (2) ","2019年4月27日","2020年10月31日","航空港区鄱阳湖路与凌风街交叉口西南角","http://127.0.0.1:3000/newHouse_pic/newhouse9.jpg");

INSERT INTO aj_new_house VALUES(NULL,"正商汇航佳苑","汇航佳苑","住宅,在售,项目在建,南北通透,厨卫全明,大阳台,人气楼盘","14000","113-150","住宅","河南林盟置业有限公司","经济开发区- 经开区","郑州市经开区航海东路十七大街交会处西北角","住宅 33.9 万（首付比例：30%）","住宅 4198.05元 （按最低首付，20年等额本息）","3室户型 (3) ","2019年3月底8#开盘","预计2021年10月份7/8#","郑州市经开区航海东路十七大街交会处","http://127.0.0.1:3000/newHouse_pic/newhouse10.jpg");

INSERT INTO aj_new_house VALUES(NULL,"锦艺四季城","锦艺四季城","住宅,在售,项目在建,品牌开发商,购物中心,商业街,学校","14500","188","住宅","河南锦轩置业有限公司","惠济- 北三环","天河路","尚未公开","","3室户型 (7) ， 4室户型 (4)","2019-04-27","2021-05-30","京广快速路与天河路交汇处北500米路东","http://127.0.0.1:3000/newHouse_pic/newhouse11.jpg");

INSERT INTO aj_new_house VALUES(NULL,"保利海德公园","保利海德公园","住宅,待售,装修交付,厨卫全明,大户型,大阳台,双卫生间","售价待定","","住宅","郑州保利亨业房地产开发有限公司","金水- 森林公园","中州大道与贾鲁河交汇处西南角 ","尚未公开 ","","3室户型 (2) ， 4室户型 (2) ","待定","待定","花园路国基路交汇处向北50米路东恒华商务一楼（展厅位置）","http://127.0.0.1:3000/newHouse_pic/newhouse12.jpg");

INSERT INTO aj_new_house VALUES(NULL,"锦艺金水湾","锦艺金水湾","住宅,在售,项目在建,大平层,品牌开发商,大型社区,全朝南","14500","","住宅","河南锦家置业有限公司","金水- 中州大道","文化路","尚未公开","","3室户型 (14) ， 4室户型 (2) ","2018年9月25日","2021年4月","文化路与贾鲁河交汇处南岸","http://127.0.0.1:3000/newHouse_pic/newhouse13.jpg");

INSERT INTO aj_new_house VALUES(NULL,"郑州孔雀城公园海","郑州孔雀城公园海","住宅,待售,大型社区,大户型,便利店,改善置业,绿色住宅","售价待定","","住宅","新郑市裕坤苑房地产开发有限公司","新郑市- 龙湖","南龙湖中华路与汇丰南路交汇处西南角","尚未公开","","3室户型 (2) ， 4室户型 (1) ","待定","待定","郑州南龙湖中华路与汇丰南路交汇处西南角","http://127.0.0.1:3000/newHouse_pic/newhouse14.jpg");

INSERT INTO aj_new_house VALUES(NULL,"世茂云尚城","世茂云尚城","住宅,在售,今年交房,项目在建,多轨交,品牌开发商,医院","14848","64-197","住宅","郑州丰益置业有限公司","管城- 紫荆山","航海东路城东路交汇处","住宅 19.2 万（首付比例：30%）","住宅 2377.66元 （按最低首付，20年等额本息）","3室户型 (6) ， 4室户型 (2) ","2018年07月28日","预计2019年底交房","航海东路城东路交汇处","http://127.0.0.1:3000/newHouse_pic/newhouse15.jpg");

INSERT INTO aj_new_house VALUES(NULL,"泷悦华庭","泷悦华庭","住宅,在售,项目在建,大户型,大阳台,双卫生间,双阳台","18000","","住宅","郑州悦宸置业有限公司","经济开发区- 滨河国际新城","滨河国际新城 经开第十七大街与经南十五路交汇处 ","尚未公开"," ","3室户型 (2) ， 4室户型 (1)","2019年6月15日","预计2022年11月交房","滨河国际新城 经开第十七大街与经南十五路交汇处","http://127.0.0.1:3000/newHouse_pic/newhouse16.jpg");

INSERT INTO aj_new_house VALUES(NULL,"雅居乐天域","雅居乐天域","住宅,待售,项目在建,绿色住宅,智能住宅,学校,大户型","售价待定","","住宅","河南雅福置业有限公司","新郑市- 龙湖","郑新快速路与祥和路交汇处","尚未公开","","3室户型 (2) ， 4室户型 (4) ","2019-06-16","2020年12月31日","郑州市郑新快速路与祥和路交汇处","http://127.0.0.1:3000/newHouse_pic/newhouse17.jpg");

INSERT INTO aj_new_house VALUES(NULL,"融信奥体世纪","融信奥体世纪","住宅,在售,项目在建,大平层,车位充足,三房朝南,厨卫全明","15000","","住宅","郑州融亮春房地产开发有限公司","中原- 陇海西路","中原区西四环与陇海快速路交汇处东南角","尚未公开","","3室户型 (3) ， 4室户型 (1) ","5月18日8#开盘","预计2021年12月25日","中原区西四环与陇海快速路交汇处东南角","http://127.0.0.1:3000/newHouse_pic/newhouse18.jpg");

INSERT INTO aj_new_house VALUES(NULL,"长基雁月湾","长基雁月湾","住宅,在售,低单价,项目在建,低容积,大型社区,旅游地产","12861","","住宅,别墅","河南长基置业有限公司","中牟县- 雁鸣湖","雁鸣大道","尚未公开","","2室户型 (1) ， 3室户型 (5) ， 4室户型 (3)","2018年12月15日","2021年05月31日","中牟县雁鸣湖镇国家农业公园北邻","http://127.0.0.1:3000/newHouse_pic/newhouse19.jpg");

INSERT INTO aj_new_house VALUES(NULL,"永恒理想世界","永恒理想世界","商住,在售,低总价,项目封顶,多轨交,品牌开发商,大型社区","13500","48","商住","河南永恒凯悦地产开发有限公司","管城- 管南片","航海路","尚未公开","","商住户型 (6)","2018年08月03日","一期交房","紫荆山路与航海路交叉口","http://127.0.0.1:3000/newHouse_pic/newhouse20.jpg");

########### INSERT INTO aj_new_house VALUES(NULL,"","","","","","","","","","","","","","","");

#新房图片表
CREATE TABLE aj_new_house_pic(
  id INT PRIMARY KEY AUTO_INCREMENT, #编号
  h_id INT,                          #房屋编号
  sm_pic VARCHAR(100),               #小图片
  md_pic VARCHAR(100),               #中图片
  lg_pic VARCHAR(100)		             #大图片
);



#出租房信息表
CREATE TABLE aj_rent_house(
  id INT PRIMARY KEY AUTO_INCREMENT
);


#出租房图片表
CREATE TABLE aj_rent_house_pic(
  id INT PRIMARY KEY AUTO_INCREMENT, #编号
  h_id INT,                          #房屋编号
  sm_pic VARCHAR(100),               #小图片
  md_pic VARCHAR(100),               #中图片
  lg_pic VARCHAR(100)		             #大图片
);


http://127.0.0.1:3000/oldHouse_pic/old(1).jpg

