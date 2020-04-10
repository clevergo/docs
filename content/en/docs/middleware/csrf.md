---
title: "CSRF Middleware"
linkTitle: "CSRF"
weight: 3
---

CRSF middleware is provided by [gorilla/csrf](https://github.com/gorilla/csrf).

```go
import (
    "github.com/clevergo/clevergo"
    "github.com/gorilla/csrf"
)
```

```go
m := csrf.Protect(
    []byte("32-byte-long-auth-key"),
    csrf.Secure(false), // developing locally
    // other options
)
router.Use(m)
```
