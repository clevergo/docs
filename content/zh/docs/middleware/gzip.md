---
title: "Gzip 中间件"
linkTitle: "Gzip"
weight: 2
---

Gzip 中间件由 [NYTimes/gziphandler](https://github.com/NYTimes/gziphandler) 提供。

```go
import (
    "clevergo.tech/clevergo"
    "github.com/NYTimes/gziphandler"
)
```

```go
router.Use(clevergo.WrapHH(gziphandler.GzipHandler))
```
