---
title: "优雅关机"
weight: 30
---

```go
app := clevergo.New()
// app.ShutdownTimeout = 5*time.Second
// app.ShutdownSignals = []os.Signal{os.Interrupt, syscall.SIGINT, syscall.SIGTERM} 
app.Run(":8080")
```

Checkout [example](https://github.com/clevergo/examples/tree/master/gracefulshutdown) for details.
