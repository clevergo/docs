---
title: "请求"
weight: 6
date: 2020-04-08T13:39:52+08:00
---

> `ctx.Request` 即 `*http.Request`.

## 请求方法断言

```go
func handler(ctx *clevergo.Context) error {
	// equals to ctx.IsMethod(http.MethodGet).
	if ctx.IsGet() {
	}
	// other shortcuts:
	//ctx.IsDelete()
	//ctx.IsPatch()
	//ctx.IsPost()
	//ctx.IsPut()
	//ctx.IsOptions()
	//ctx.IsAJAX()
	return nil
}
```
