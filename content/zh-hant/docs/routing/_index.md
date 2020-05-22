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

router := clevergo.NewRouter()
router.Get("/", index) // GET /
// router.Handle(http.MethodGet, index) // 等同於 router.Get.
router.Delete("/", index) // DELETE /
router.Options("/", index) // OPTIONS /
router.Patch("/", index) // PATCH /
router.Post("/", index) // POST /
router.Put("/", index) // PUT /
router.Get("/hello/:name", hello) // GET /hello/foo, GET /hello/bar...
```

## 參數

### 命名參數

如你所看到的，`:name` 是一個命名參數，其值可以通過 `Context.Params` 獲得。
命名參數只匹配單個路徑段：

比如: `/hello/:name`

```text
/hello/foo              匹配
/hello/bar              匹配
/hello/foo/bar          不匹配
```

### Catch-All 參數

第二種類型爲 catch-all 參數，形式爲 `*name`。如字面意思，它們匹配一切。因此它們必須位於 pattern 的末端。

比如: `/src/*filepath`

```text
/src/                     匹配
/src/somefile.go          匹配
/src/subdir/somefile.go   匹配
```

### 獲取參數

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

`Router.UseRawPath` 允許匹配帶有空格轉義符 `%2f` 的參數。	

```go	
router.UseRawPath = true	
```

## 選項

### 命名路由

命名路由用於 URLs 生成，詳情參閱[生成 URL](/zh-hant/docs/routing/url-generation)。

### 路由中間件

`RouteMiddleware` 選項允許爲特定的路由插入中間件。

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
