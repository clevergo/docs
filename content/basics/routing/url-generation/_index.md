---
title: "URL Generation"
weight: 30
---

There are two ways to geneerate URLs, one is **named route**, the other one is **matched route**.

## Named Route

Firstly, we need to name the route.

```go
router.Get("/login", login, clevergo.RouteName("login"))
router.Get("/posts/:year/:month/:day/:slug", queryPost, clevergo.RouteName("post"))
```

And then, use it in middleware, handler or views.

```go
func handler(c *clevergo.Context) error {
    loginURL, err := c.RouteURL("login")
    fmt.Println(loginURL.String()) // /login

    postURL, err := c.RouteURL("post")
	fmt.Println(err) // route "post" parameter "year" is required
    
    postURL, err = c.RouteURL("post", "year", "2020", "month", "04", "day", "09", "slug", "hello world")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    // the order of parameters is irrelevant, the following code has the same effect.
    postURL, err = c.RouteURL("post", "month", "04", "slug", "hello world", "day", "09", "year", "2020")
    fmt.Println(postURL.String()) // /posts/2020/04/09/hello%20world

    return err
}
```

{{% notice tip %}}
`c.RouteURL` equals to `router.RouteURL`.
{{% /notice %}}

## Matched Route

Matched route is another way to generate URLs of the current route without naming it.

```go

func queryPosts(c *clevergo.Context) error {
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

router.Get("/posts", queryPosts)
```

{{% notice note %}}
Matched route cannot be used in global middleware, since route resolve is trigger after invoking global middleware, checkout [Request Lifecycle](/en/basics/application/request-lifecycle) for details.
{{% /notice %}}
