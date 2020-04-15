---
title: "响应"
weight: 7
date: 2020-04-08T13:20:52+08:00
---

> `ctx.Response` 即 `http.ResponseWriter`.

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

渲染一个模板，详情参阅[视图](/zh/docs/views)。

## JSON

```go
func json(ctx *clevergo.Context) error {
	return ctx.JSON(http.StatusOK, clevergo.Map{
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
	return ctx.JSONP(http.StatusOK, clevergo.Map{
        "message": "hello world",
    })
}

func jsonpCallback(ctx *clevergo.Context) error {
	return ctx.JSONPCallback(http.StatusOK, "myCallback", clevergo.Map{
        "message": "hello world",
    })
}
```

## XML

```go
func xml(ctx *clevergo.Context) error {
	return ctx.XML(http.StatusOK, clevergo.Map{
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

## Redirect

```go
func redirect(ctx *clevergo.Context) error {
    ctx.Redirect("/login", http.StatusFound)
    return nil
}
```

## SendFile

发送文件让浏览器下载。

```go
func download(ctx *clevergo.Context) error {
    buf := bytes.NewReader([]byte("bar"))
    return ctx.SendFile("foo.txt", buf)
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
