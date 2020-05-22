---
title: "概念"
weight: 4
---

## Handle

`Handle` 是一個請求處理器，其接收一個 [context](#context) 實例，然後返回響應給客戶端：

```go
func home(c *clevergo.Context) error {
	return c.String(http.StatusOK, "hello world")
}
```

如果出現錯誤，可以返回錯誤給[錯誤處理器](/zh-hant/docs/error-handling)，或者直接返回錯誤響應並返回 `nil`。

請參閱[路由](/zh-hant/docs/routing)瞭解如何註冊處理器。

## Context

`Context` 是一個包裹了 `*http.Request` 和 `http.ResponseWriter` 的結構體。

請參閱 [請求](/zh-hant/docs/request) 和 [響應](/zh-hant/docs/response)。
