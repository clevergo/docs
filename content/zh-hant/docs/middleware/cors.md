---
title: "CORS 中間件"
linkTitle: "CORS"
weight: 3
---

CORS 中間件由 [rs/cors](https://github.com/rs/cors) 提供。

```go
import (
    "github.com/clevergo/clevergo"
    "github.com/rs/cors"
)
```

```go
m := cors.Default().Handler
router.Use(clevergo.WrapHH(m))
```
