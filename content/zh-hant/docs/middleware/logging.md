---
title: "Logging 中間件"
linkTitle: "Logging"
weight: 3
---

Logging 中間件由 [clevergo/middleware](https://github.com/clevergo/middleware) 提供。

```go
import (
    "github.com/clevergo/clevergo"
	"github.com/clevergo/middleware"
)
```

```go
m := middleware.Logging(os.Stdout)
// m := middleware.CombinedLogging(os.Stdout) // combined logging
router.Use(m)
```
