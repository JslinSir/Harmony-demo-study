 # 鸿蒙使用
 
# 遇到的问题

- @Styles 不够完善，不支持传参，不支持export导出，这样就没法提取公共样式
部分属性还不支持 [文档](https://developer.huawei.com/consumer/cn/doc/harmonyos-guides-V2/arkts-style-0000001473856690-V2)

- 开发工具如何指定页面进行预览，当开发页面的时候，主入口写了一些登录的业务逻辑，这时候开发的时候热加载的时候都会回到入口文件
-  字体宽高适配问题
- webview 和原生通信

# 期望实现
- 能否支持一个 按压态的组件，目前只有 Button 有按压效果。
- 能否实现 类似 react 或者小程序的 一个代码块的方法，不用布局元素包裹
- 能否提供一个遮罩的一个组件
- 状态更新是同步还是异步
- 状态更新如何主动调用


# 全局组件注册，不用引入


