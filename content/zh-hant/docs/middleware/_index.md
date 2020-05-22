---
title: "中間件"
weight: 5
---

## 創建中間件

中間件是一個接收 `Handle` 並返回 `Handle` 的函數。讓我們以 `ServerHeader` 作爲例子，其寫入 `Server` 響應頭，並調用下一個中間件或處理器。

```go
func ServerHeader(srv string) clevergo.MiddlewareFunc {
    return func(next clevergo.Handle) clevergo.Handle {
        return func(c *clevergo.Context) error {
            // 寫入 Server 響應頭。
            c.Response.Header().Set("Server", srv)
            // 調用下一個中間件或處理器。
            return next(ctx)
        }
    }
}
```

## 全局中間件

```go
router.Use(
    clevergo.Recovery(true), // Recovery 中間件
    ServerHeader("CleverGo"),
)
```

## 路由組中間件

請參閱[路由組](/zh-hant/docs/routing/route-group)。

## 路由中間件

請參閱[路由中間件](/zh-hant/docs/routing/#路由中間件)。

## 第三方中間件

`WrapHH` 是一個將 `func(http.Handler) http.Handler` 轉化爲中間件的適配器，你可以輕鬆地使用絕大部分的第三方中間件。

```go
router.Use(
    // https://github.com/nytimes/gziphandler
    clevergo.WrapHH(gziphandler.GzipHandler),
)
```
