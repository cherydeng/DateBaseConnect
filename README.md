# DateBaseConnect
jsp和mysql数据库的连接操作并且将结果输出到表格中


#Tomcat环境配置教学稍后面授

1.启动IDEA编译器，创建新工程(make new project)

2.创建Java的Web Application。version = 4.0

3.进入主界面后在右上角有个绿色的锤子🔨.旁边有一个Add configuration。点进去

4.点“+”号添加环境。往下翻找到Tomcat(如果没有有一个more items里面点一下就好了)。

5.选择tomcat server选择local

6.面板上Name随意取；URL必须是http://localhost:8080/ ；HTTP port 必须是8080

7.在Application server中点击configure。把自己下载的Tomcat整个文件全部选择例如（apache-tomcat-9.0.45）然后确认就可以了

9.点击deployment；点“+”号点Artifacts。然后Apply确认更改就行了。

！！！主意！！！运行的时候一定要保证jsp文件在web文件下
此外，一定要是用IDEA 专业版！！ 推荐2019.1
如果连接数据库不成功，可能是没有将mysql驱动程序(注意是.Jar)放到lib文件夹下
