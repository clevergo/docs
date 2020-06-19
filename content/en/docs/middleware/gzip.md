---
title: "Gzip Middleware"
linkTitle: "Gzip"
weight: 2
---

Gzip middleware is provided by [NYTimes/gziphandler](https://github.com/NYTimes/gziphandler).

```go
import (
    "clevergo.tech/clevergo"
    "github.com/NYTimes/gziphandler"
)
```

```go
app.Use(clevergo.WrapHH(gziphandler.GzipHandler))
```
