---
title: "错误处理器中间件"
linkTitle: "错误处理器"
weight: 20
---

如果你使用 `New` 创建应用，无需再次绑定错误处理器中间件。

```go
app.Use(middleware.ErrorHandler())
```
