---
title: "CORS Middleware"
linkTitle: "CORS"
weight: 3
---

CORS middleware is powered by [rs/cors](https://github.com/rs/cors).

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
