---
title: "Response"
weight: 60
---

> `c.Response` equals to `http.ResponseWriter`.

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

Renders a template, see [Views](/en/basics/views).

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

`Emit` emits a response with the given code, content type and string data.

```go
func emit(c *clevergo.Context) error {
    return c.Emit(http.StatusOK, "text/html", "data")
}
```

## Blob

`Blob` emits a response with the given code, content type and byte slice data.

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

Sends a file to browser.

```go
func download(c *clevergo.Context) error {
    buf := bytes.NewReader([]byte("bar"))
    return c.SendFile("foo.txt", buf)
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
