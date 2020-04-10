---
title: "響應"
weight: 7
date: 2020-04-08T13:20:52+08:00
---

> `ctx.Response` 即 `http.ResponseWriter`.

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

## Render

渲染一個模板，詳情參閱[視圖](/zh/docs/views)。

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

`Emit` 發出一個帶有給定狀態碼、內容類型和字符串數據的響應。

```go
func emit(ctx *clevergo.Context) error {
    return ctx.Emit(http.StatusOK, "text/html", "data")
}
```

## Blob

`Blob` 發出一個帶有給定狀態碼、內容類型和字節塊數據的響應。

```go
func blob(ctx *clevergo.Context) error {
    return ctx.Blob(http.StatusOK, "text/html", []byte("data"))
}
```

## 快捷方式

| 方法 | |
|---|---|
| Context.Error | http.Error |
| Context.NotFound | http.NotFoud |
| Context.Redirect | http.Redirect |
| Context.SetCookie | http.SetCookie |
| Context.Write | http.ResponseWriter.Write |
| Context.WriteHeader | http.ResponseWriter.WriteHeader |
