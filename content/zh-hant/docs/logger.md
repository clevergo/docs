---
title: "日誌"
linkTitle: "日誌"
weight: 5
date: 2020-04-08T10:44:52+08:00
---

CleverGo 定義了壹個通用的 [logger](https://github.com/clevergo/log) 接口。詳情請查看[例子](https://github.com/clevergo/examples/tree/master/logger)。

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

註冊 Logger 後，可以在中間件或 Handler 中通過 `Context.Logger()` 獲取 Logger。

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
