---
title: "请求处理器"
weight: 20
---

请求处理器是一个 `Handle` 函数，其接收一个 [Context](/zh/basics/context) 实例，然后返回响应给客户端。

```go
func hello(c *clevergo.Context) error {
	return c.String(http.StatusOK, "hello world")
}
```
