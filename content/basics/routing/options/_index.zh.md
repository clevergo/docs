---
title: "路由选项"
linkTitle: "选项"
weight: 20
---

Router 允许为路由设置特定的参数。

```go
router.Get("/", index, 
    opt1, 
    opt2,
    // ...
)
```

## 命名路由

`RouteName` 用于 URLs 生成，详情参阅[生成 URL](/zh/routing/url-generation)。

## 路由中间件

`RouteMiddleware` 选项允许为特定的路由插入中间件。

```go
router.Post(
    "/posts",
    createPost,
    clevergo.RouteMiddleware(
        rateLimiter,
        bodyLimiter,
        // ...
    ),
)
```
