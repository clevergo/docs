---
title: "路由"
linkTitle: "路由"
weight: 5
---

## 基本路由

```go
func index(ctx *clevergo.Context) error {
    return ctx.String(http.StatusOK, "hello world")
}

func hello(ctx *clevergo.Context) error {
	return ctx.String(http.StatusOK, fmt.Sprintf("hello %s", ctx.Params.String("name")))
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
func params(ctx *clevergo.Context) error {
	name := ctx.Params.String("name")
	page, err := ctx.Params.Int("page")
	num, err := ctx.Params.Int64("num")
	amount, err := ctx.Params.Uint64("amount")
	enable, err := ctx.Params.Bool("enable")
	price, err := ctx.Params.Float64("price")
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
