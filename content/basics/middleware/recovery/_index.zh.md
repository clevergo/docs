---
title: "Recovery 中间件"
linkTitle: "Recovery"
weight: 30
---

CleverGo 提供了一个内置的 recovery 中间件，其捕获 panic 并将 panic 错误返回给上游中间件。

```go
app.Use(clevergo.Recovery())
```
