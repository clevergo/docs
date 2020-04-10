---
title: "Recovery 中間件"
linkTitle: "Recovery"
weight: 1
---

CleverGo 提供了一個內置的 recovery 中間件。

```go
rm := clevergo.Recovery(true) // 開啓調試模式，其會打印 stack 信息到日誌。
// rm := clevergo.RecoveryLogger(true, log.New(out, prefix, flag)) // 指定 Logger。

router.Use(rm)
```
