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

## Decode

路由器定义了一个 `Decoder` 接口，用于解码请求的输入。

```go
import "github.com/clevergo/form"
```

```go
type loginForm struct {
	Username string `json:"username"`
	Password string `json:"password"`
}

// Validate implements form.Validatable interface, it will be
// invoked after decoding.
func (f *loginForm) Validate() error {
	// Validates form fields here.
	return nil
}

func login(ctx *clevergo.Context) error {
	f := new(loginForm)
	if err := ctx.Decode(f); err != nil {
		return err
	}
	fmt.Printf("%+v\n", f) // &{Username:foo Password:bar}

	return ctx.Stringf("Hello %s", f.Username)
}

router.Decoder = form.New() // 注册 Decoder
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

> Decoder 于 **v1.11.0** 引进。

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
