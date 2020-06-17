---
title: "路由"
linkTitle: "路由"
weight: 5
---

## 基本路由

```go
func index(c *clevergo.Context) error {
    return c.String(http.StatusOK, "hello world")
}

func hello(c *clevergo.Context) error {
	return c.String(http.StatusOK, fmt.Sprintf("hello %s", c.Params.String("name")))
}

app := clevergo.New()
app.Get("/", index) // GET /
// app.Handle(http.MethodGet, index) // 等同于 app.Get.
app.Delete("/", index) // DELETE /
app.Options("/", index) // OPTIONS /
app.Patch("/", index) // PATCH /
app.Post("/", index) // POST /
app.Put("/", index) // PUT /
app.Get("/hello/:name", hello) // GET /hello/foo, GET /hello/bar...
```

## 参数

### 命名参数

如你所看到的，`:name` 是一个命名参数，其值可以通过 `Context.Params` 获得。
命名参数只匹配单个路径段：

比如: `/hello/:name`

```text
/hello/foo              匹配
/hello/bar              匹配
/hello/foo/bar          不匹配
```

### Catch-All 参数

第二种类型为 catch-all 参数，形式为 `*name`。如字面意思，它们匹配一切。因此它们必须位于 pattern 的末端。

比如: `/src/*filepath`

```text
/src/                     匹配
/src/somefile.go          匹配
/src/subdir/somefile.go   匹配
```

### 获取参数

```go
func params(c *clevergo.Context) error {
	name := c.Params.String("name")
	page, err := c.Params.Int("page")
	num, err := c.Params.Int64("num")
	amount, err := c.Params.Uint64("amount")
	enable, err := c.Params.Bool("enable")
	price, err := c.Params.Float64("price")
	return err
}
```

### Raw Path

`Router.UseRawPath` 允许匹配带有空格转义符 `%2f` 的参数。	

```go	
router.UseRawPath = true	
```

## 选项

### 命名路由

命名路由用于 URLs 生成，详情参阅[生成 URL](/zh/docs/routing/url-generation)。

### 路由中间件

`RouteMiddleware` 选项允许为特定的路由插入中间件。

```go
router.Post(
    "/posts",
    createPost,
    clevergo.RouteMiddleware(
        rateLimiter,
        bodyLimiter,
        // ...
    ),
)
```
