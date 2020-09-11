---
title: "Logging 中间件"
linkTitle: "Logging"
weight: 10
tags: ["logger", "logging", "middleware"]
---

如果你使用 `New` 创建应用，无需再次绑定 Logging 中间件。

```go
app.Use(middleware.Logging())
```
