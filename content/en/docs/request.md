---
title: "Request"
weight: 6
date: 2020-04-08T13:39:52+08:00
---

> `ctx.Request` equals to `*http.Request`.

## Method Assertion

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
