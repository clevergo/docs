---
title: "视图"
weight: 9
date: 2020-04-08T13:50:52+08:00
---

路由器为模板引擎定义了一个 `Renderer` 接口。

```go
func render(c *clevergo.Context) error {
    return c.Render(http.StatusOK, "index.tmpl", clevergo.Map{
        "message": "hello world",
    })
}
```

在开始之前，我们需要注册一个 Renderer，以下是目前支持的模板引擎。

> 可以自行实现其他引擎的 Renderer，并通过 PR 在这里进行介绍。

## Jet

[Jet Renderer](https://github.com/clevergo/jetrenderer) 是一个 [Jet](https://github.com/cloudykit/jet)  模板引擎的适配器。

```go
router.Renderer = jetrenderer.New(jet.NewHTMLSet("./views"))
```
