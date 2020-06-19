---
title: "Logging 中間件"
linkTitle: "Logging"
weight: 3
---

如果你使用 `New` 創建應用，無需再次綁定 Logging 中間件。

```go
import (
    "clevergo.tech/clevergo"
)
```

```go
app.Use(middleware.Logging())
```
