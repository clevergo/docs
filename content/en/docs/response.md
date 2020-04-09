---
title: "Response"
weight: 7
date: 2020-04-08T13:20:52+08:00
---

> `ctx.Response` equals to `http.ResponseWriter`.

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

Renders a template, see [Views](/docs/views).

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

`Emit` emits a response with the given code, content type and string data.

```go
func emit(ctx *clevergo.Context) error {
    return ctx.Emit(http.StatusOK, "text/html", "data")
}
```

## Blob

`Blob` emits a response with the given code, content type and byte slice data.

```go
func blob(ctx *clevergo.Context) error {
    return ctx.Blob(http.StatusOK, "text/html", []byte("data"))
}
```

## Shortcuts

| Method | |
|---:|---|
| Error | http.Error |
| NotFound | http.NotFoud |
| Redirect | http.Redirect |
| SetCookie | http.SetCookie |
| Write | http.ResponseWriter.Write |
| WriteHeader | http.ResponseWriter.WriteHeader |
