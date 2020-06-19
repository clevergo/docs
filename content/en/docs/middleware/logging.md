---
title: "Logging Middleware"
linkTitle: "Logging"
weight: 3
---

Logging middleware is enabled by default, if you are using `New` for creating application.

```go
import (
    "clevergo.tech/clevergo"
)
```

```go
app.Use(clevergo.Logging())
```
