---
title: "Logger"
linkTitle: "Logger"
weight: 5
date: 2020-04-08T10:44:52+08:00
---

CleverGo defines a generic [logger](https://github.com/clevergo/log) interface. Please checkout [example](https://github.com/clevergo/examples/tree/master/logger) for details.

## Zap

```go
import "go.uber.org/zap"
```

```go
zapLogger, _ := zap.NewDevelopment()
app := clevergo.New()
app.Logger = zapLogger.Sugar()
```

## Logrus

```go
import "github.com/sirupsen/logrus"
```

```go
app := clevergo.New()
app.Logger = logrus.New()
```

## Usage

After registering logger, you can access the logger by `Context.Logger()` in middleware or handler.

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
