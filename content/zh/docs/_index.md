---
title: "文档"
linkTitle: "文档"
weight: 20
menu:
  main:
    weight: 20
---

CleverGo 一个用 Go 语言编写的<strong>轻量级</strong>、<strong>高性能</strong>和<strong>功能丰富</strong>的 HTTP Web 开发框架。

事实上，其不是一个开箱即用的框架，其提供了许多解藕的包可以让你从头开始自由定制你的应用。或许以后我们会提供一个开箱即用的定制框架，但是不保证何时完成。

## 特性

- **高性能：** 速度极快，参阅[基准测试](/zh/docs/benchmark)。
- **平缓的学习曲线：** 所有文档可在半小时内阅读完毕。
- **[反向路由生成](/zh/docs/routing/url-generation)：** 可以通过命名路由或匹配路由生成 URL。
- **[路由组](/zh/docs/routing/route-group)：** 亦称子路由。
- **对 RESTful APIs 友好：** 很容易设计 RESTful APIs 和通过路由组对 APIs 进行版本化。
- **[中间件](/zh/docs/middleware)：** 可以在路由组或特定路由插入中间件，也支持全局中间件，兼容大部分第三方中间件。
- ...

## 对比其他框架

### CleverGo vs HTTPRouter

CleverGo 是 HTTPRouter 的增强版本，其提供额外的特性，比如 URL 生成、路由组、易于整合第三方中间件等。

#### 为何不向原仓库贡献？

- 维护缓慢，比如[路由组]((ttps://github.com/julienschmidt/httprouter/pull/89)的 PR 仍处于未合并状态。
- 缺少一些常用的特性，比如 URL 生成、路由组。
- 由于引入了一些特性而破坏了兼容性。

无论如何，毫无疑问 [HTTPRouter](https://github.com/julienschmidt/httprouter) 是一个优秀的包。

### CleverGo vs Echo and Gin

Echo 和 Gin 都是流行的、高性能和全功能的 Web 框架。

**优点**

- 性能：作为一个 HTTP 路由，CleverGo 的性能高于 Gin 和 Echo。

**缺点**

- 社区：Echo 和 Gin 都有一个庞大的社区和用户群体。
