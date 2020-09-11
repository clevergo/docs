---
title: "Gzip 中间件"
linkTitle: "Gzip"
weight: 100
---

Gzip 中间件由 [NYTimes/gziphandler](https://github.com/NYTimes/gziphandler) 提供。

```go
import (
    "clevergo.tech/clevergo"
    "github.com/NYTimes/gziphandler"
)
```

```go
app.Use(clevergo.WrapHH(gziphandler.GzipHandler))
```
