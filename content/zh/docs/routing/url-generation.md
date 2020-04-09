---
title: "生成 URL"
date: 2020-04-09T12:12:41+08:00
---

## 命名路由

命名路由用于反向路由生成。

```go
router.Get("/login", login, clevergo.RouteName("login"))
router.Get("/posts/:year/:month/:day/:slug", queryPost, clevergo.RouteName("post"))
```

然后我们可以在中间件、处理器和视图使用。

```go
func handler(ctx *clevergo.Context) error {
    loginURL, err := ctx.RouteURL("login")
    fmt.Println(loginURL.String()) // /login

    postURL, err := ctx.RouteURL("post")
	fmt.Println(err) // route "post" parameter "year" is required
    
    postURL, err = ctx.RouteURL("post", "year", "2020", "month", "04", "day", "09", "slug", "hello world")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    // 参数是无序的，下面代码返回相同结果。
    postURL, err = ctx.RouteURL("post", "month", "04", "slug", "hello world", "day", "09", "year", "2020")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    return err
}
```

> `ctx.RouteURL` 是 `router.URL` 的别名。

## 匹配路由

匹配路由是另一种生成当前路由 URL 而不需要命名的方法。

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

> 匹配路由不能在全局路由使用，因为路由解析是在调用全局路由后才触发，参阅[请求的生命周期](/zh/docs/concepts/request-lifecycle)。
