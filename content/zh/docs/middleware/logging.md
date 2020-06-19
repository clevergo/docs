---
title: "Logging 中间件"
linkTitle: "Logging"
weight: 3
---

如果你使用 `New` 创建应用，无需再次绑定 Logging 中间件。

```go
import (
    "clevergo.tech/clevergo"
)
```

```go
app.Use(middleware.Logging())
```
