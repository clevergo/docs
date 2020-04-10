---
title: "概念"
weight: 4
---

## Handle

`Handle` 是一个请求处理器，其接收一个 [context](#context) 实例，然后返回响应给客户端：

```go
func home(ctx *clevergo.Context) error {
	return ctx.String(http.StatusOK, "hello world")
}
```

如果出现错误，可以返回错误给[错误处理器](/zh/docs/error-handling)，或者直接返回错误响应并返回 `nil`。

请参阅[路由](/zh/docs/routing)了解如何注册处理器。

## Context

`Contexnt` 是一个包裹了 `*http.Request` 和 `http.ResponseWriter` 的结构体。

请参阅 [请求](/zh/docs/request) 和 [响应](/zh/docs/response)。
