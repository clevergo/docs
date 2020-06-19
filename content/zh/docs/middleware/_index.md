---
title: "中间件"
weight: 5
---

## 创建中间件

中间件是一个接收 `Handle` 并返回 `Handle` 的函数。让我们以 `ServerHeader` 作为例子，其写入 `Server` 响应头，并调用下一个中间件或处理器。

```go
func ServerHeader(srv string) clevergo.MiddlewareFunc {
    return func(next clevergo.Handle) clevergo.Handle {
        return func(c *clevergo.Context) error {
            // 写入 Server 响应头。
            c.Response.Header().Set("Server", srv)
            // 调用下一个中间件或处理器。
            return next(ctx)
        }
    }
}
```

## 全局中间件

```go
app.Use(
    clevergo.Recovery(true), // Recovery 中间件
    ServerHeader("CleverGo"),
)
```

## 路由组中间件

请参阅[路由组](/zh/docs/routing/route-group)。

## 路由中间件

请参阅[路由中间件](/zh/docs/routing/#路由中间件)。

## 第三方中间件

`WrapHH` 是一个将 `func(http.Handler) http.Handler` 转化为中间件的适配器，你可以轻松地使用绝大部分的第三方中间件。

```go
app.Use(
    // https://github.com/nytimes/gziphandler
    clevergo.WrapHH(gziphandler.GzipHandler),
)
```
