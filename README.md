GetuiSDK-NoIDFA
========

## 个推SDK无IDFA版本

### 安装方法

在 `Podfile` 文件下添加

``` pod 'GetuiSDK-NoIDFA' ```

欢迎大家提交Issuse或者PR来提醒更新  
个推官方从1.4.2起分离了NoIDFA的版本，所以发布该库方便国内的开发者使用。

###Changelog

####1.4.2 (2016-04-26)

- 修复大批量消息接收时，UI卡顿问题。
- 分离获取IDFA版本和不获取IDFA版本，供开发者选择。
- 支持后台运行，默认关闭，需开发者自主开启。
