---
title: "Recovery Middleware"
linkTitle: "Recovery"
weight: 1
---

CleverGo provides a built-in recovery middleware.

```go
rm := clevergo.Recovery(true) // enable debug mode, it writes stack info to log.
// rm := clevergo.RecoveryLogger(true, log.New(out, prefix, flag)) // specify logger.

router.Use(rm)
```
