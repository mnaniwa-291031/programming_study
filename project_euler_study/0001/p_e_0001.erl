%%% Project Euler No.0001 by Erlang

-module(p_e_0001).
-export([run/0]).

sum_multiples_3or5(N) ->
    Num = [X || X <- lists:seq(1, N - 1), (X rem 3 == 0) or (X rem 5 == 0)],
    lists:sum(Num).

run() ->
    io:format("~p~n", [sum_multiples_3or5(10)]),
    io:format("~p~n", [sum_multiples_3or5(1000)]).

