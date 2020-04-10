---
title: "Gzip 中間件"
linkTitle: "Gzip"
weight: 2
---

Gzip 中間件由 [NYTimes/gziphandler](https://github.com/NYTimes/gziphandler) 提供。

```go
import (
    "github.com/clevergo/clevergo"
    "github.com/NYTimes/gziphandler"
)
```

```go
router.Use(clevergo.WrapHH(gziphandler.GzipHandler))
```
