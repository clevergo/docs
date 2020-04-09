---
title: "响应"
weight: 7
date: 2020-04-08T13:20:52+08:00
---

> `ctx.Response` 相当于 `http.ResponseWriter`.

## Text

```go
func text(ctx *clevergo.Context) error {
    return ctx.String(http.StatusOK, "hello world")
}
```

## HTML

```go
func html(ctx *clevergo.Context) error {
    return ctx.HTML(http.StatusOK, "<html><body>hello world</body></html>")
}

func htmlBlob(ctx *clevergo.Context) error {
    return ctx.HTMLBlob(http.StatusOK, []byte("<html><body>hello world</body></html>"))
}
```

## JSON

```go
func json(ctx *clevergo.Context) error {
	return ctx.JSON(http.StatusOK, map[string]interface{}{
        "message": "hello world",
    })
}

func jsonBlob(ctx *clevergo.Context) error {
    return ctx.JSONBlob([]byte(`{"message":"hello world"}`))
}
```

## JSONP

```go
func jsonp(ctx *clevergo.Context) error {
	return ctx.JSONP(http.StatusOK, map[string]interface{}{
        "message": "hello world",
    })
}

func jsonpCallback(ctx *clevergo.Context) error {
	return ctx.JSONPCallback(http.StatusOK, "myCallback", map[string]interface{}{
        "message": "hello world",
    })
}
```

## XML

```go
func xml(ctx *clevergo.Context) error {
	return ctx.XML(http.StatusOK, map[string]interface{}{
        "message": "hello world",
    })
}

func xmlBlob(ctx *clevergo.Context) error {
    return ctx.XMLBlob(http.StatusOK, []byte(`<xml><message>hello world</message></xml>`))
}
```

## Emit

`Emit` 发出一个带有给定状态码、内容类型和字符串数据的响应。

```go
func emit(ctx *clevergo.Context) error {
    return ctx.Emit(http.StatusOK, "text/html", "data")
}
```

## Blob

`Blob` 发出一个带有给定状态码、内容类型和字节块数据的响应。

```go
func blob(ctx *clevergo.Context) error {
    return ctx.Blob(http.StatusOK, "text/html", []byte("data"))
}
```
