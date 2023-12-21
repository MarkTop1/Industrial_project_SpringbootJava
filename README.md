
## 📢 项目简介

基于 JDK 17、Spring Boot 3、Spring Security 6、JWT、Redis、Mybatis-Plus、Knife4j、Vue 3、Element-Plus 构建的前后端分离单体权限管理系统。


## 📁 项目目录
```
├── src                                 # 源码目录
    ├── common                          # 公共模块
    ├── config                          # 自动装配配置
        ├── CorsConfig                  # 跨域共享配置
        ├── RedisConfig                 # Redis 配置
        ├── SwaggerConfig               # API 接口文档配置
        ├── WebMvcConfig                # WebMvc 配置
    ├── controller                      # 控制层
    ├── converter                       # MapStruct转换器
    ├── core                            # 核心模块
        ├── mybatisplus                 # Mybatis-Plus 配置和插件
        ├── security                    # Spring Security 安全配置和扩展
    ├── filter                          # 过滤器
        ├── RequestLogFilter            # 请求日志过滤器
        ├── VerifyCodeFilter            # 验证码过滤器
    ├── model                           # 模型层
        ├── bo                          # 业务对象
        ├── dto                         # 数据传输对象
        ├── entity                      # 实体对象
        ├── form                        # 表单对象
        ├── query                       # 查询参数对象
        ├── vo                          # 视图对象
    ├── mapper                          # 数据库访问层
    ├── plugin                          # 插件(可选)
        ├── dupsubmit                   # 防重提交插件，用于防止表单重复提交
        ├── easyexcel                   # EasyExcel 插件，Excel 文件的读写
        ├── rabbitmq                    # RabbitMQ 插件，消息队列交互
        ├── websocket                   # WebSocket 插件，实时双向通信
        ├── xxljob                      # XXL-JOB 插件，分布式任务调度和执行
    ├── service                         # 业务逻辑层
└── end       
```


## 🚀 项目启动

1. **数据库初始化**

    执行 [one_group.sql] 导入数据库 创建、表结构和基础数据的初始化。

2. **修改配置**

    [application-dev.yml](src/main/resources/application-dev.yml) 修改MySQL、Redis连接配置；

3. **启动项目**

    执行 [SystemApplication.java](src/main/java/com/youlai/system/SystemApplication.java) 的 main 方法完成后端项目启动；

