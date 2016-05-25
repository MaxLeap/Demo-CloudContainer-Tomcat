### MaxLeap云容器JAVA版DEMO项目

####功能
该DEMO是一个JAVA WEB项目,实现了简单的数据库访问逻辑

使用到的技术栈

- Web框架:SpringMVC
- 持久层框架:Hibernate
- 数据库:mysql

####如何使用
1. 下载或clone本DEMO项目到本地
  `git clone https://github.com/MaxLeap/Demo-CloudContainer-Tomcat.git`
2. 创建MaxLeap应用并生成数据源
  - 前往www.maxleap.cn, 申请账号,并创建应用
  - 进入创建的应用,在[应用设置]部分，选择[系统设置],点击[创建Mysql数据库]
  - 点击眼睛图标使数据源信息可视化
3. 生成我的应用mysql表结构
  - 点击[管理我的数据],进入phpmyadmin管理界面
  - 打开DEMO项目文件src/resources/demo-cloudcontainer-java.sql文件,在phpmyadmin里执行该sql文件初始化数据库表信息
4. 打开DEMO项目填充数据源信息
  - 打开src/resources/META-INF/persistence.xml文件
  - 填充应用的数据库信息
    填充三项属性:`hibernate.connection.url`,`hibernate.connection.username`,`hibernate.connection.password`
5. 编译打包项目成war包
6. 上传并部署你的java web项目
  - 进入你的应用,在[开发中心]部分,选择[云容器],在[版本]页面点击[上传Java项目]上传刚刚打包好的war包
  - 上传完毕后在[版本列表]里操作刚刚上传的云容器版本,执行[部署]操作
7. 设置并访问你的云容器主机子域名
  - 进入应用,在[应用设置]部分，选择[系统设置],设置你的云容器主机子域名并保存更改
  - 访问你刚设置好的域名即可进入你的WEB应用
 
更多信息请访问[云容器教程](https://github.com/MaxLeap/Docs/blob/master/zh/UserManual/Guide/CloudContainer.md)