---
title: "CORS Middleware"
linkTitle: "CORS"
weight: 100
---

CORS middleware is powered by [rs/cors](https://github.com/rs/cors).

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
