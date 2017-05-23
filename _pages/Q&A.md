---
layout: page
title: Q&A
permalink: /qa/
order: 4
share: false
---

#Q&A

> 最近脑袋越来越不好用，很多知识点要查好几遍才记住，为了方便之后得查找将问题汇总在这里

---

#### Q: git目录中的中文不正常显示？

#### A: 使用下面的命令设置git参数

	git config --global core.quotepath false 
		
---

#### Q: linux下的sublime不能输入中文

#### A: https://github.com/lyfeyaj/sublime-text-imfix

---

#### Q: JAVA 内存溢出Dump参数

#### A: -XX:+HeapDumpOnOutOfMemoryError

---

#### Q: git修改最近一次提交的author信息

#### A: git commit –amend –author=<user-email>

----

#### Q: mac/linux中vim永久显示行号、开启语法高亮

#### A: STEP1 cp /usr/share/vim/vimrc ~/.vimrc 先复制一份vim配置模板到个人目录下

#### STEP2  vi ~/.vimrc 加入 syntax on set nu!

----

#### Q: spring-boot debug启动jar文件

#### A: java -Xdebug -Xrunjdwp:server=y,transport=dt_socket,address=8000,suspend=n -jar jar文件

----

#### Q: mysql修改datetime时间格式, 统一减n小时的方法 

#### A: UPDATE auth_user SET `date_joined`=DATE_FORMAT(ADDDATE(`date_joined`, interval -n hour),'%Y-%m-%d %H:%i:%s');

----

#### Q: git: Your branch and 'origin/master' have diverged

#### A: git fetch origin
#### git reset --hard origin/master
 


