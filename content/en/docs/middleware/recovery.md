---
title: "Recovery Middleware"
linkTitle: "Recovery"
weight: 1
---

CleverGo provides a built-in recovery middleware, what it does is that catch panic and returns the panic error to the upstream middleware.

```go
app.Use(clevergo.Recovery())
```
