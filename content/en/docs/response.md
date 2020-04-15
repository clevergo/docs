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
    // return ctx.Stringf(http.StatusOK, "hello %s", "foobar")
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

## Redirect

```go
func redirect(ctx *clevergo.Context) error {
    ctx.Redirect("/login", http.StatusFound)
    return nil
}
```

## SendFile

Sends a file to browser.

```go
func download(ctx *clevergo.Context) error {
    buf := bytes.NewReader([]byte("bar"))
    return ctx.SendFile("foo.txt", buf)
}
```

## Shortcuts

| Method | |
|---|---|
| Context.Error | http.Error |
| Context.NotFound | http.NotFoud |
| Context.Redirect | http.Redirect |
| Context.SetCookie | http.SetCookie |
| Context.Write | http.ResponseWriter.Write |
| Context.WriteHeader | http.ResponseWriter.WriteHeader |
