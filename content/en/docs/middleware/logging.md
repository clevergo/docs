---
title: "Logging Middleware"
linkTitle: "Logging"
weight: 3
---

Logging middleware is provided by [clevergo/middleware](https://github.com/clevergo/middleware), a wrapper of [gorilla/handlers](https://github.com/gorilla/handlers).

```go
import (
    "github.com/clevergo/clevergo"
	"github.com/clevergo/middleware"
)
```

```go
m := middleware.Logging(os.Stdout)
// m := middleware.CombinedLogging(os.Stdout) // combined logging
router.Use(clevergo.WrapHH(m))
```
