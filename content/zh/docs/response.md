---
title: "响应"
weight: 7
date: 2020-04-08T13:20:52+08:00
---

> `c.Response` 即 `http.ResponseWriter`.

## Text

```go
func text(c *clevergo.Context) error {
    return c.String(http.StatusOK, "hello world")
    // return c.Stringf(http.StatusOK, "hello %s", "foobar")
}
```

## HTML

```go
func html(c *clevergo.Context) error {
    return c.HTML(http.StatusOK, "<html><body>hello world</body></html>")
}

func htmlBlob(c *clevergo.Context) error {
    return c.HTMLBlob(http.StatusOK, []byte("<html><body>hello world</body></html>"))
}
```

## Render

渲染一个模板，详情参阅[视图](/zh/docs/views)。

## JSON

```go
func json(c *clevergo.Context) error {
	return c.JSON(http.StatusOK, clevergo.Map{
        "message": "hello world",
    })
}

func jsonBlob(c *clevergo.Context) error {
    return c.JSONBlob([]byte(`{"message":"hello world"}`))
}
```

## JSONP

```go
func jsonp(c *clevergo.Context) error {
	return c.JSONP(http.StatusOK, clevergo.Map{
        "message": "hello world",
    })
}

func jsonpCallback(c *clevergo.Context) error {
	return c.JSONPCallback(http.StatusOK, "myCallback", clevergo.Map{
        "message": "hello world",
    })
}
```

## XML

```go
func xml(c *clevergo.Context) error {
	return c.XML(http.StatusOK, clevergo.Map{
        "message": "hello world",
    })
}

func xmlBlob(c *clevergo.Context) error {
    return c.XMLBlob(http.StatusOK, []byte(`<xml><message>hello world</message></xml>`))
}
```

## Emit

`Emit` 发出一个带有给定状态码、内容类型和字符串数据的响应。

```go
func emit(c *clevergo.Context) error {
    return c.Emit(http.StatusOK, "text/html", "data")
}
```

## Blob

`Blob` 发出一个带有给定状态码、内容类型和字节块数据的响应。

```go
func blob(c *clevergo.Context) error {
    return c.Blob(http.StatusOK, "text/html", []byte("data"))
}
```

## Redirect

```go
func redirect(c *clevergo.Context) error {
    c.Redirect("/login", http.StatusFound)
    return nil
}
```

## SendFile

发送文件让浏览器下载。

```go
func download(c *clevergo.Context) error {
    buf := bytes.NewReader([]byte("bar"))
    return c.SendFile("foo.txt", buf)
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
