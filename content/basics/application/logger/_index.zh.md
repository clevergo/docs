---
title: "日志记录器"
weight: 20
tags: ["logger", "logging"]
---

`Application` 定义了一个通用的 [logger](https://github.com/clevergo/log)。

## Zap

```go
import "go.uber.org/zap"
```

```go
app := clevergo.New()
app.Logger = zap.NewExample().Sugar()
```

## Logrus

```go
import "github.com/sirupsen/logrus"
```

```go
app := clevergo.New()
app.Logger = logrus.New()
```

## 使用

注册 Logger 后，可以在中间件或 Handler 中通过 `Context.Logger()` 获取 Logger。

```go
func handle(c *clevergo.Context) error {
	c.Logger().Debug("debug msg")
	c.Logger().Debugf("debugf msg")
	c.Logger().Info("debug")
	c.Logger().Infof("debugf")
	c.Logger().Warn("warn msg")
	c.Logger().Warnf("warnf msg")
	c.Logger().Error("error msg")
	c.Logger().Errorf("errorf msg")
	// c.Logger().Fatal("fatal msg")
	// c.Logger().Fatalf("fatalf msg")
	return nil
}
```
