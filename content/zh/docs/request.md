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

## 快捷方式

| 方法 | |
|---|---|
| Context.Cookie | http.Request.Cookie |
| Context.Cookies | http.Request.Cookies |
| Context.GetHeader | http.Request.Header.Get |
| Context.FormValue | http.Request.FormValue |
| Context.PostFormValue | http.Request.PostFormValue |
| Context.QueryString | http.Request.URL.RawQuery |
| Context.QueryParam | http.Request.URL.Query().Get |
| Context.QueryParams | http.Request.URL.Query() |
| Context.DefaultQuery | QueryParam with default value |
