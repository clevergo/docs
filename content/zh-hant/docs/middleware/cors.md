---
title: "CORS 中間件"
linkTitle: "CORS"
weight: 3
---

CORS 中間件由 [rs/cors](https://github.com/rs/cors) 提供。

```go
import (
    "clevergo.tech/clevergo"
    "github.com/rs/cors"
)
```

```go
m := cors.Default().Handler
app.Use(clevergo.WrapHH(m))
```
