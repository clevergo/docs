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

## Decode

Router defines a `Decoder` interface for decoding request's input to a struct.

```go
import "github.com/clevergo/form"
```

```go
type loginForm struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

func login(ctx *clevergo.Context) error {
	f := new(loginForm)
	if err := ctx.Decode(f); err != nil {
		return err
	}
	fmt.Printf("%+v\n", f) // &{Username:foo Password:bar}

	// you need to validate form field, it is not a duty of decoder.

	return ctx.Stringf("Hello %s", f.Username)
}

router.Decoder = form.New() // registers a decoder.
router.Post("/login", login)
```

```shell
$ curl -d "username=foo&password=bar" \
	http://localhost:8080/login
hello foo

$ curl -H "Content-Type: application/json" \
	-d '{"username":"foo", "password":"bar"}' \
	http://localhost:8080/login
hello foo
```

> Decoder was introduced in **v1.11.0**.

## Shortcuts

| Method | |
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
