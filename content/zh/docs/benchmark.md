---
title: "基准测试"
linkTitle: "基准测试"
weight: 2
date: 2020-04-08T10:44:52+08:00
---

* Date: 2020/05/05
* Go: 1.14
* [Source](https://github.com/razonyang/go-http-routing-benchmark)

**Lower is better!**

![Benchmark](/img/benchmark.png)

| | Version |
| ---: | --- |
| CleverGo | v1.12.1 |
| Echo | v4.1.16 |
| Gin | v1.6.3 |
| HttpRouter | master |

```text
BenchmarkEcho_Param                      9861666               122 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Param                      12494502               105 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_Param               15958222                78.0 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_Param                 12695022                88.3 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_Param5                     4142410               286 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Param5                      6874149               165 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_Param5               8807510               138 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_Param5                 7758260               156 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_Param20                    1376014               838 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Param20                     3743918               298 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_Param20              4676074               258 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_Param20                4381585               316 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_ParamWrite                 4596742               254 ns/op               8 B/op          1 allocs/op
BenchmarkGin_ParamWrite                  6934353               176 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_ParamWrite          10376676               117 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_ParamWrite             8998488               133 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GithubStatic               7150136               158 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GithubStatic               10377639               131 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GithubStatic        19286025                65.1 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GithubStatic          12085249               109 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GithubParam                3778482               304 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GithubParam                 6419968               190 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GithubParam          8065258               154 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GithubParam            6892191               173 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GithubAll                    20208             59011 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GithubAll                     31452             39222 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GithubAll              40234             29057 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GithubAll                36421             32468 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GPlusStatic               11423619               107 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlusStatic                13291884                87.7 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlusStatic         36804595                36.1 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GPlusStatic           15905011                71.5 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GPlusParam                 7461649               145 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlusParam                 14197334                81.3 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlusParam          17845141                66.2 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GPlusParam            15496012                77.4 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GPlus2Params               5206744               239 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlus2Params                8227368               147 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlus2Params         9852040               119 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GPlus2Params           7805029               144 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GPlusAll                    454306              2854 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlusAll                     735115              1677 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlusAll              876234              1195 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GPlusAll                839223              1412 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_ParseStatic               10589972               109 ns/op               0 B/op          0 allocs/op
BenchmarkGin_ParseStatic                12999727                90.2 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_ParseStatic         34477627                37.4 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_ParseStatic           15138662                75.5 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_ParseParam                 7664292               143 ns/op               0 B/op          0 allocs/op
BenchmarkGin_ParseParam                 11960924               105 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_ParseParam          14804965                73.9 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_ParseParam            13253904                82.6 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_Parse2Params               6680065               182 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Parse2Params               10222662               118 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_Parse2Params        12435852                94.6 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_Parse2Params          11560776               106 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_ParseAll                    299674              4308 ns/op               0 B/op          0 allocs/op
BenchmarkGin_ParseAll                     448986              3206 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_ParseAll              697732              1872 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_ParseAll                662565              1693 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_StaticAll                    42777             27256 ns/op               0 B/op          0 allocs/op
BenchmarkGin_StaticAll                     59330             23324 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_StaticAll              73441             15605 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_StaticAll                54543             21351 ns/op               0 B/op          0 allocs/op
```
