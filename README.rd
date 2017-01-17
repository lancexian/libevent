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

4、Reactor模式学习
	整个libevent本身就是一个Reactor，因此本节将专门对Reactor模式进行必要的介绍，并列出libevnet中的几个重要组件和Reactor的对应关系，在后面的章节中可能还会提到本节介绍的基本概念。

	4.1 Reactor的事件处理机制
		普通函数调用机制：
			函数调用----->函数执行------>程序等待------>函数结果返回------->控制权返回给程序-------->程序继续处理
		Reactor："反应堆"，是一种事件驱动机制，和普通函数调用不同之处在于：应用程序不是主动的调用某个API完成处理，而是恰恰相反，Reactor事件处理流程，应用程序需要提供相应的接口并注册到Reactor上，如果相应的事件发生，Reactor将主动调用应用程序注册的接口，这些接口称为回调函数。



http://blog.csdn.net/sparkliang/article/details/4957744
