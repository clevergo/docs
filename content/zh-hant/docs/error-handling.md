---
title: "錯誤處理"
linkTitle: "錯誤處理"
weight: 10
date: 2020-04-08T10:44:52+08:00
---

錯誤處理器可以讓你記錄錯誤和格式化錯誤響應（HTML、JSON、XML...），其接收一個 **Context** 實例和一個由中間件或者最終處理器產生的**錯誤**。

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

```go
$ curl http://localhost:8080/404             
<html><body><h1>404 page not found</h1></body></html>                                                

$ curl "http://localhost:8080/404?format=json"
{"message":"404 page not found"}                 
```

