# hfblog
一个基于jsp的开源博客系统
# 主要功能介绍
## 1.文章管理
- 增加文章
- 修改文章
- 删除文章
## 2.文件管理
- 增加文件
- 删除文件
## 3.通讯录管理
- 增加联系人- 删除联系人
- 修改联系人
## 4.商品管理
- 增加商品
- 修改商品
- 删除商品
## 5.用户管理
- 管理用户的信息
## 更多功能会在后续更新中加入
# 项目背景介绍
- 该项目为学校jsp课程的课程设计，所以加上了一些和博客无关的功能，比如通讯录
和商品管理，因为代码也有一部分学习价值，所以未将该功能去除。
- 项目采用MCV架构，没有使用jsp框架，便于新手阅读和学习。前端用了bootstrap框架，许多布局样式也参考了一部分网上的漂亮的代码，在此也谢谢那些无私的代码提供者
# 博客部署步骤
## 我会尽可能说的详细
1. 安装tomcat服务器，并配置好环境变量，6.0以上就可以。
2. 下载我提供的压缩包，将webapp文件夹下的代码复制到tomcat的webapps目录下
3. 打开“hfblog\WEB-INF\classes\c3p0-config.xml”文件，文件内容如下

```
<?xml version="1.0" encoding="UTF-8"?>
<c3p0-config>
  <default-config>
	<property name="driverClass">com.mysql.jdbc.Driver</property>
	<property name="jdbcUrl">jdbc:mysql://localhost:3306/stu</property>
	<property name="user">username</property>
	<property name="password">password</property>
    <property name="initialPoolSize">10</property>
    <property name="maxIdleTime">30</property>
    <property name="maxPoolSize">100</property>
    <property name="minPoolSize">10</property>

  </default-config>

  

</c3p0-config>
```
将username和password改为你数据库的用户名和密码，关于数据库的安装下面会说
-  下载mysql数据库，并下载sqlyog管理器，安装数据库的时候会提示你设置用户名和密码，就是上边要用到的那个
- 在sqlyog里执行我提供的sql语句“hfblog\WEB-INF\hfblog.sql”
- 最后，运行tomcat，打开浏览器，输入 “http://localhost:8080/hfblog” 就可查看博客了，登录后台管理器需要点击右上角那个登录
# 演示网址
[hfblog](http://139.199.185.242/hfblog)
- 如果链接打不开了，那可能是我没钱给服务器续费了吧
# 联系方式
- 使用过程中遇到问题请发邮件 “2323089526@qq.com”
# 最后，转载请注明出处
