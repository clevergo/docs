---
title: "Minify Middleware"
linkTitle: "Minify"
weight: 100
---

Minify middleware is provided by [tdewolff/minify](https://github.com/tdewolff/minify).

```go
import (
	"clevergo.tech/clevergo"
	"github.com/tdewolff/minify/v2"
	"github.com/tdewolff/minify/v2/css"
	"github.com/tdewolff/minify/v2/html"
	"github.com/tdewolff/minify/v2/js"
	"github.com/tdewolff/minify/v2/svg"
)
```


```go
m := minify.New()
m.AddFunc("text/css", css.Minify)
m.AddFunc("text/html", html.Minify)
m.AddFunc("image/svg+xml", svg.Minify)
m.AddFuncRegexp(regexp.MustCompile("^(application|text)/(x-)?(java|ecma)script$"), js.Minify)
app.Use(clevergo.WrapHH(m.Middleware))
```
