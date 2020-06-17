---
title: "CSRF 中间件"
linkTitle: "CSRF"
weight: 3
---

CRSF 中间件由 [gorilla/csrf](https://github.com/gorilla/csrf) 提供。

```go
import (
    "clevergo.tech/clevergo"
    "github.com/gorilla/csrf"
)
```

```go
m := csrf.Protect(
    []byte("32-byte-long-auth-key"),
    csrf.Secure(false), // 本地开发
    // 其他选项
)
router.Use(clevergo.WrapHH(m))
```
