%% 导出函数依赖
-module(mod_exp1).
-compile(export_all).

fun1() 	->
	io:format("start a tree dependency test.~n"),
	Fun2 = fun mod_exp2:fun2/1,
	Fun3 = fun mod_exp3:fun3/1,
	Fun4 = fun mod_exp4:fun4/1,
	Fun2(?MODULE),
	Fun3(?MODULE),
	Fun4(?MODULE).