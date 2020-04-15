---
title: "視圖"
weight: 9
date: 2020-04-08T13:50:52+08:00
---

路由器爲模板引擎定義了一個 `Renderer` 接口。

```go
func render(ctx *clevergo.Context) error {
    return ctx.Render(http.StatusOK, "index.tmpl", clevergo.Map{
        "message": "hello world",
    })
}
```

在開始之前，我們需要註冊一個 Renderer，以下是目前支持的模板引擎。

> 可以自行實現其他引擎的 Renderer，並通過 PR 在這裏進行介紹。

## Jet

[Jet Renderer](https://github.com/clevergo/jetrenderer) 是一個 [Jet](https://github.com/cloudykit/jet)  模板引擎的適配器。

```go
router.Renderer = jetrenderer.New(jet.NewHTMLSet("./views"))
```
