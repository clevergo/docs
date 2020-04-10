---
title: "Gzip Middleware"
linkTitle: "Gzip"
weight: 2
---

Gzip middleware is provided by [NYTimes/gziphandler](https://github.com/NYTimes/gziphandler).

```go
import (
    "github.com/clevergo/clevergo"
    "github.com/NYTimes/gziphandler"
)
```

```go
router.Use(clevergo.WrapHH(gziphandler.GzipHandler))
```
