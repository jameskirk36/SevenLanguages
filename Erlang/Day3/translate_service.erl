% Monitor the translate_service and restart it should it die

-module(translate_service).
-export([loop/0, translate/1]).
loop() ->

    receive
        {From, "casa"} -> 
            From ! "house", 
            loop();
        
		
        {From, "blanca"} -> 
            From ! "white", 
            loop();
        
        {From, _} -> 
            From ! "Cannot........compute........BANG!!", 
				exit({translate_service,die,at,erlang:time()})
end.

% send a word to be translated by the translator
translate(Word) ->
    translator ! {self(), Word}, 
    receive
        Translation -> Translation
    end.

