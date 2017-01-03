libevent学习笔记

1、前沿
libevent是一个轻量级的开源高性能网络库，第一次学习，记录libevent代码和设计思想进行深入分析，供其他人学习

2、libevent简介
事件驱动（event-driver），高性能
轻量级，专注网络
代码相当精炼、易读
跨平台
支持多种IO复用技术，epoll、poll、dev/poll、select和kqueue等
支持IO、定时器和信号等事件
注册事件优先级

3、学习点
libevent本身是一个典型的Reactor模型，理解Reactor模型是理解libevent的基石
下载链接：http://monkey.org/~provos/libevent/

