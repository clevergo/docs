---
title: "Error Handling"
linkTitle: "Error Handling"
weight: 10
date: 2020-04-08T10:44:52+08:00
---

Error Handler allow recording error and formatting error response, it receives a context and an error that returns by middleware or final handler.

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
		ctx.JSON(http.StatusOK, map[string]interface{}{
			"message": err.Error(),
		})
	default:
		h.tmpl.Execute(ctx.Response, err)
	}
}

tmpl := template.Must(template.New("error").Parse(`<html><body><h1>{{ .Error }}</h1></body></html>`))
router.ErrorHandler = NewErrorHandler(tmpl)
```

```shell
$ curl http://localhost:8080/404             
<html><body><h1>404 page not found</h1></body></html>                                                

$ curl "http://localhost:8080/404?format=json"
{"message":"404 page not found"}                 
```
