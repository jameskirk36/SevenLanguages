% usage instructions for exercise 1 Day 3 erlang:
% Monitor the translate_service and restart it should it die.
% run 'erl' then enter the following commands:

c(translate_service).
c(translate_monitor).
Monitor = spawn(fun translate_monitor:loop/0).
Monitor ! new.
translate_service:translate("casa").
translate_service:translate("banzai").  
translate_service:translate("casa").  
