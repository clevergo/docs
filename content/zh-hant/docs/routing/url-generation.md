---
title: "生成 URL"
date: 2020-04-09T12:12:41+08:00
---

## 命名路由

命名路由用於反向路由生成。

```go
router.Get("/login", login, clevergo.RouteName("login"))
router.Get("/posts/:year/:month/:day/:slug", queryPost, clevergo.RouteName("post"))
```

然後我們可以在中間件、處理器和視圖使用。

```go
func handler(ctx *clevergo.Context) error {
    loginURL, err := ctx.RouteURL("login")
    fmt.Println(loginURL.String()) // /login

    postURL, err := ctx.RouteURL("post")
	fmt.Println(err) // route "post" parameter "year" is required
    
    postURL, err = ctx.RouteURL("post", "year", "2020", "month", "04", "day", "09", "slug", "hello world")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    // 參數是無序的，下面代碼返回相同結果。
    postURL, err = ctx.RouteURL("post", "month", "04", "slug", "hello world", "day", "09", "year", "2020")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    return err
}
```

> `ctx.RouteURL` 是 `router.URL` 的別名。

## 匹配路由

匹配路由是另一種生成當前路由 URL 而不需要命名的方法。

```go
func listPost(ctx *clevergo.Context) error {
	nextURL, nil := ctx.Route.URL()

	page := ctx.DefaultQuery("page", "1")
	pageNum, nil := strconv.Atoi(page)
	page = strconv.Itoa(pageNum + 1)
	q := nextURL.Query()
	q.Set("page", page)
	nextURL.RawQuery = q.Encode()

	fmt.Println(nextURL.String()) // /posts?page=2, /posts?page=3 ...
	return nil
}

router.Get("/posts", listPost)
```

> 匹配路由不能在全局路由使用，因爲路由解析是在調用全局中間件後才觸發，參閱[請求的生命週期](/zh-hant/docs/concepts/request-lifecycle)。
