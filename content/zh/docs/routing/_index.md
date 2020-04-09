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

router := clevergo.NewRouter()
router.Get("/", index) // GET /
// router.Handle(http.MethodGet, index) // 等同于 router.Get.
router.Delete("/", index) // DELETE /
router.Options("/", index) // OPTIONS /
router.Patch("/", index) // PATCH /
router.Post("/", index) // POST /
router.Put("/", index) // PUT /
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
        bodyLimit,
        // ...
    ),
)
```
