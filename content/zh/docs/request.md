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
|---:|---|
| Cookie | http.Request.Cookie |
| Cookies | http.Request.Cookies |
| GetHeader | http.Request.Header.Get |
| FormValue | http.Request.FormValue |
| PostFormValue | http.Request.PostFormValue |
| QueryString | http.Request.URL.RawQuery |
| QueryParam | http.Request.URL.Query().Get |
| QueryParams | http.Request.URL.Query() |
| DefaultQuery | QueryParam with default value |
