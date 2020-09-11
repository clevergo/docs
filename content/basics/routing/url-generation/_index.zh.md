---
title: "URL 生成"
weight: 30
---

可以通过两种方式生成 URL，一种是**命名路由**，另一种是**匹配路由**。

## 命名路由

我们首先需要为路由命名。

```go
router.Get("/login", login, clevergo.RouteName("login"))
router.Get("/posts/:year/:month/:day/:slug", queryPost, clevergo.RouteName("post"))
```

然后我们可以在中间件、处理器和视图使用。

```go
func handler(c *clevergo.Context) error {
    loginURL, err := c.RouteURL("login")
    fmt.Println(loginURL.String()) // /login

    postURL, err := c.RouteURL("post")
	fmt.Println(err) // route "post" parameter "year" is required
    
    postURL, err = c.RouteURL("post", "year", "2020", "month", "04", "day", "09", "slug", "hello world")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    // 参数是无序的，下面代码返回相同结果。
    postURL, err = c.RouteURL("post", "month", "04", "slug", "hello world", "day", "09", "year", "2020")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    return err
}
```

{{% notice tip %}}
`c.RouteURL` 等同于 `router.RouteURL`。
{{% /notice %}}

## 匹配路由

匹配路由是另一种生成当前路由 URL 而不需要为其命名的方法。

```go
func listPost(c *clevergo.Context) error {
	nextURL, _ := c.Route.URL()

	page := c.DefaultQuery("page", "1")
	pageNum, _ := strconv.Atoi(page)
	page = strconv.Itoa(pageNum + 1)
	q := nextURL.Query()
	q.Set("page", page)
	nextURL.RawQuery = q.Encode()

	fmt.Println(nextURL.String()) // /posts?page=2, /posts?page=3 ...
	return nil
}

router.Get("/posts", listPost)
```

{{% notice note %}}
匹配路由不能在全局路由使用，因为路由解析是在调用全局中间件后才触发，参阅[请求的生命周期](/zh/basics/application/request-lifecycle)。
{{% /notice %}}