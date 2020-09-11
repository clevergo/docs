---
title: "应用程序"
weight: 10
---

`Application`是一个根路由，其实现了 `http.Handler` 接口。

## 用法

```go
app := clevergo.New()
app.Get("/", func(c *clevergo.Context) error {
    return c.String(http.StatusOK, "Hello, World!")
})
app.Run(":8080")
```

1. 创建应用。
1. 注册 `GET` 请求处理器。
1. 启动 HTTP 服务，其监听 `8080` 端口。

{{% notice tip %}}
`New` 创建的应用，默认开启了 **Logging**、**ErrorHandler**、**Recovery** 和 **ServerHeader** 中间件。
你也可以通过 `Pure` 创建一个没有任何中间件的、纯净的应用。
{{% /notice %}}


## 中间件

Application 可以通过 `Use` 插入中间件。

```go
app.Use(
    middlewareFoo,
    middlewarebar,
    // ...
)
```

Checkout the [Middleware](/zh/basics/middleware) for details.

## 启动服务

### HTTP

```go
app.Run(addr)
```

### HTTPS

```go
app.Run(addr, certFile, keyFile)
```

### Unix

```go
app.RunUnix("/tmp/app.sock")
```
