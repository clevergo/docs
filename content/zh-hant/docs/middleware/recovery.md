---
title: "Recovery 中間件"
linkTitle: "Recovery"
weight: 1
---

CleverGo 提供了一個內置的 recovery 中間件，其捕獲 panic 並將 panic 錯誤返回給上遊中間件。

```go
app.Use(clevergo.Recovery())
```
