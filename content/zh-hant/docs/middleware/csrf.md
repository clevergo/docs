---
title: "CSRF 中間件"
linkTitle: "CSRF"
weight: 3
---

CRSF 中間件由 [gorilla/csrf](https://github.com/gorilla/csrf) 提供。

```go
import (
    "clevergo.tech/clevergo"
    "github.com/gorilla/csrf"
)
```

```go
m := csrf.Protect(
    []byte("32-byte-long-auth-key"),
    csrf.Secure(false), // 本地開發
    // 其他選項
)
app.Use(clevergo.WrapHH(m))
```
