---
title: "Views"
weight: 70
---

Router defines a `Renderer` interface for rendering a template.

```go
func render(c *clevergo.Context) error {
    return c.Render(http.StatusOK, "index.tmpl", clevergo.Map{
        "message": "hello world",
    })
}
```

Before starting, we need to register a renderer, supported template engines are listed below.

> Please feel free to implement a renderer for other template engine, and then mention it here by creating a PR.

## Jet

[Jet Renderer](https://github.com/clevergo/jetrenderer) is an adapter for [Jet](https://github.com/cloudykit/jet) template engine.

```go
router.Renderer = jetrenderer.New(jet.NewHTMLSet("./views"))
```
