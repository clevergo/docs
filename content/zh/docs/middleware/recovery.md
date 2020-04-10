---
title: "Recovery 中间件"
linkTitle: "Recovery"
weight: 1
---

CleverGo 提供了一个内置的 recovery 中间件。

```go
rm := clevergo.Recovery(true) // 开启调试模式，其会打印 stack 信息到日志。
// rm := clevergo.RecoveryLogger(true, log.New(out, prefix, flag)) // 指定 Logger。

router.Use(rm)
```
