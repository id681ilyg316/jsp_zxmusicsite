## 本项目实现的最终作用是基于JSP在线音乐查询播放网站
## 分为2个角色
### 第1个角色为管理员角色，实现了如下功能：
 - 修改密码
 - 友情链接管理
 - 注册会员管理
 - 留言管理
 - 管理员登录
 - 管理员账号管理
 - 网站公告管理
 - 音乐信息管理
 - 音乐类型管理
 - 音乐语种管理
 - 音乐资讯管理
### 第2个角色为用户角色，实现了如下功能：
 - 会员注册
 - 查看我的动态
 - 查看网站公告
 - 查看音乐信息
 - 查看音乐信息详情
 - 查看音乐资讯
 - 查看首页
## 数据库设计如下：
# 数据库设计文档

**数据库名：** zxmusicsite

**文档版本：** 


| 表名                  | 说明       |
| :---: | :---: |
| [allusers](#allusers) |  |
| [dongtai](#dongtai) |  |
| [dx](#dx) |  |
| [fenxiang](#fenxiang) |  |
| [goumaijilu](#goumaijilu) |  |
| [haoyou](#haoyou) |  |
| [huiyuanzhuce](#huiyuanzhuce) |  |
| [liuyanban](#liuyanban) |  |
| [pinglun](#pinglun) |  |
| [shoucangjilu](#shoucangjilu) |  |
| [xinwentongzhi](#xinwentongzhi) |  |
| [yinyueleixing](#yinyueleixing) |  |
| [yinyuexinxi](#yinyuexinxi) |  |
| [yinyueyuzhong](#yinyueyuzhong) |  |
| [youqinglianjie](#youqinglianjie) |  |

**表名：** <a id="allusers">allusers</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | pwd |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | cx |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="dongtai">dongtai</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | title |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | content |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  4   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  5   | addtime |   datetime   | 19 |   0    |    N     |  N   |       | 添加时间  |
|  6   | xinqing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="dx">dx</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  3   | content |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |

**表名：** <a id="fenxiang">fenxiang</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | haoyouname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yinyueid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | addtime |   datetime   | 19 |   0    |    N     |  N   |       | 添加时间  |

**表名：** <a id="goumaijilu">goumaijilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | zhuanjimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yuzhong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | geshou |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | huiyuanhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  9   | shouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  11   | goumaishuliang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  12   | zongjine |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  13   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  14   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  15   | iszf |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  16   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="haoyou">haoyou</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | haoyouname |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addtime |   datetime   | 19 |   0    |    N     |  N   |       | 添加时间  |

**表名：** <a id="huiyuanzhuce">huiyuanzhuce</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | huiyuanhao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | mima |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 密码  |
|  4   | xingming |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 姓名  |
|  5   | xingbie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 性别  |
|  6   | shouji |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | shenfenzheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | dizhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 地址  |
|  9   | zhaopian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 照片  |
|  10   | beizhu |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 备注  |
|  11   | issh |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  12   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="liuyanban">liuyanban</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | cheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | xingbie |   varchar   | 2 |   0    |    Y     |  N   |   NULL    |   |
|  4   | QQ |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | QQ号码  |
|  5   | youxiang |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 邮箱  |
|  6   | dianhua |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 电话  |
|  7   | neirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 内容  |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |
|  9   | huifuneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |

**表名：** <a id="pinglun">pinglun</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | xinwenID |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | pinglunneirong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | pinglunren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | pingfen |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="shoucangjilu">shoucangjilu</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | username |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 用户名  |
|  3   | xwid |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | ziduan |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | biao |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="xinwentongzhi">xinwentongzhi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | biaoti |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 标题  |
|  3   | leibie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 类别  |
|  4   | neirong |   longtext   | 2147483647 |   0    |    Y     |  N   |   NULL    | 内容  |
|  5   | tianjiaren |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 添加人  |
|  6   | shouyetupian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    | 首页图片  |
|  7   | dianjilv |   int   | 10 |   0    |    Y     |  N   |   NULL    |   |
|  8   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yinyueleixing">yinyueleixing</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yinyuexinxi">yinyuexinxi</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | zhuanjimingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | leixing |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | yuzhong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  5   | geshou |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  6   | jiage |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  7   | gequzhanshi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  8   | fengmian |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  9   | zhuanjijianjie |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  10   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="yinyueyuzhong">yinyueyuzhong</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | yuzhong |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**表名：** <a id="youqinglianjie">youqinglianjie</a>

**说明：** 

**数据列：**

| 序号 | 名称 | 数据类型 |  长度  | 小数位 | 允许空值 | 主键 | 默认值 | 说明 |
| :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|  1   | id |   int   | 10 |   0    |    N     |  Y   |       | 自增主键  |
|  2   | wangzhanmingcheng |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  3   | wangzhi |   varchar   | 255 |   0    |    Y     |  N   |   NULL    |   |
|  4   | addtime |   timestamp   | 19 |   0    |    N     |  N   |   current_timestamp()    |   |

**运行不出来可以微信 javape 我的公众号：源码码头**
