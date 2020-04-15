---
title: "错误处理"
linkTitle: "错误处理"
weight: 10
date: 2020-04-08T10:44:52+08:00
---

错误处理器可以让你记录错误和格式化错误响应（HTML、JSON、XML...），其接收一个 **Context** 实例和一个由中间件或者最终处理器产生的**错误**。

```go
type ErrorHandler struct {
	tmpl *template.Template
}

func NewErrorHandler(tmpl *template.Template) *ErrorHandler {
	return &ErrorHandler{
		tmpl: tmpl,
	}
}

func (h *ErrorHandler) Handle(ctx *clevergo.Context, err error) {
	// write error to log.
	log.Println(err)

	format := ctx.DefaultQuery("format", "html")
	switch format {
	case "json":
		ctx.JSON(http.StatusOK, clevergo.Map{
			"message": err.Error(),
		})
	default:
		h.tmpl.Execute(ctx.Response, err)
	}
}

tmpl := template.Must(template.New("error").Parse(`<html><body><h1>{{ .Error }}</h1></body></html>`))
router.ErrorHandler = NewErrorHandler(tmpl)
```

```go
$ curl http://localhost:8080/404             
<html><body><h1>404 page not found</h1></body></html>                                                

$ curl "http://localhost:8080/404?format=json"
{"message":"404 page not found"}                 
```

