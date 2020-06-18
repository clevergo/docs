* Date: 2020/06/18
* Go: 1.14
* [Source](https://github.com/razonyang/go-http-routing-benchmark)

**Lower is better!**

![Benchmark](/img/benchmark.png)

| | Version |
| ---: | --- |
| CleverGo | v0.1.0 |
| Echo | v4.1.16 |
| Gin | v1.6.3 |
| HttpRouter | master |

```text
BenchmarkEcho_Param                     16608495                72.7 ns/op             0 B/op          0 allocs/op
BenchmarkGin_Param                      18492751                62.0 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_Param               27649080                45.5 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_Param                 23644378                50.3 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_Param5                     6862722               176 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Param5                     11727897               103 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_Param5              13724848                86.1 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_Param5                12594856                93.9 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_Param20                    2223610               552 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Param20                     4304322               261 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_Param20              5041107               238 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_Param20                4918911               243 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_ParamWrite                 6848887               177 ns/op               8 B/op          1 allocs/op
BenchmarkGin_ParamWrite                 10034564               120 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_ParamWrite          15606183                74.8 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_ParamWrite            13882710                88.1 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GithubStatic              12774535                91.6 ns/op             0 B/op          0 allocs/op
BenchmarkGin_GithubStatic               15921393                72.5 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_GithubStatic        28967665                41.1 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GithubStatic          18975434                64.0 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GithubParam                6686660               180 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GithubParam                 9932197               124 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GithubParam         11650159               100 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GithubParam           10772011               112 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GithubAll                    31489             37412 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GithubAll                     47378             25862 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GithubAll              58173             19658 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GithubAll                56629             21051 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_GPlusStatic               17962977                64.6 ns/op             0 B/op          0 allocs/op
BenchmarkGin_GPlusStatic                16684482                74.9 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlusStatic         41453244                27.0 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GPlusStatic           22169737                51.4 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GPlusParam                11993016               102 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlusParam                 14431076                78.4 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlusParam          19364257                59.9 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GPlusParam            16330616                73.1 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GPlus2Params               7901209               149 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlus2Params               12366967                96.7 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlus2Params        14735076                81.9 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_GPlus2Params          12330756                96.1 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_GPlusAll                    725527              1581 ns/op               0 B/op          0 allocs/op
BenchmarkGin_GPlusAll                    1000000              1100 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_GPlusAll             1495382               796 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_GPlusAll               1288446               917 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_ParseStatic               17562513                68.1 ns/op             0 B/op          0 allocs/op
BenchmarkGin_ParseStatic                20118867                58.9 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_ParseStatic         45820228                25.6 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_ParseStatic           24270544                49.2 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_ParseParam                14369294                84.1 ns/op             0 B/op          0 allocs/op
BenchmarkGin_ParseParam                 17899891                64.3 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_ParseParam          24373110                47.7 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_ParseParam            21544585                54.2 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_Parse2Params              11008596               107 ns/op               0 B/op          0 allocs/op
BenchmarkGin_Parse2Params               15956736                78.3 ns/op             0 B/op          0 allocs/op
BenchmarkHttpRouter_Parse2Params        19648192                61.8 ns/op             0 B/op          0 allocs/op
BenchmarkCleverGo_Parse2Params          16037846                68.0 ns/op             0 B/op          0 allocs/op
BenchmarkEcho_ParseAll                    408250              2674 ns/op               0 B/op          0 allocs/op
BenchmarkGin_ParseAll                     629155              1985 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_ParseAll              972379              1271 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_ParseAll                693435              1588 ns/op               0 B/op          0 allocs/op
BenchmarkEcho_StaticAll                    53402             22425 ns/op               0 B/op          0 allocs/op
BenchmarkGin_StaticAll                     64755             18426 ns/op               0 B/op          0 allocs/op
BenchmarkHttpRouter_StaticAll             105960             10811 ns/op               0 B/op          0 allocs/op
BenchmarkCleverGo_StaticAll                78554             15509 ns/op               0 B/op          0 allocs/op
```