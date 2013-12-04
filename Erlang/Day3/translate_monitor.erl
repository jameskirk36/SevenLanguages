% monitor for translate_service

-module(translate_monitor).
-export([loop/0]).

loop() -> 
	process_flag(trap_exit, true),
	receive 
		new -> 
			io:format("creating and monitoring translate service process.~n"),
			register(translator, spawn_link(fun translate_service:loop/0)),
			loop();
		{'EXIT', From, Reason} -> 
			io:format("restarting..."),
			self() ! new,
			loop()
	end.
