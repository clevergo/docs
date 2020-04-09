---
title: "文档"
linkTitle: "文档"
weight: 20
menu:
  main:
    weight: 20
---

CleverGo 一个用 Go 语言编写的<strong>轻量级</strong>、<strong>高性能</strong>和<strong>功能丰富</strong>的 HTTP Web 开发框架。

- **高性能：** 速度极快，参阅[基准测试](/zh/docs/benchmark)。
- **[反向路由生成](/zh/docs/routing/url-generation)：** 可以通过命名路由或匹配路由生成 URL。
- **[路由组](/zh/docs/routing/route-group)：** 亦称子路由。
- **对 RESTful APIs 友好：** 很容易设计 RESTful APIs 和通过路由组对 APIs 进行版本化。
- **[中间件](/zh/docs/middleware)：** 可以在路由组或特定路由插入中间件，也支持全局中间件，兼容大部分第三方中间件。
- **[Error Handler](/zh/docs/error-handling)：** 记录错误和格式化错误响应。
