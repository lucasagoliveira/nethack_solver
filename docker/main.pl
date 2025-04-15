library(janus).

:- py_import(gymnasium, [as(gym)]).

:- py_import(nle, []).

:- py_call(gym:make("NetHackScore-v0"), Env),
    py_call(Env:reset()),  % each reset generates a new dungeon
    py_call(Env:step(1)),  % move agent '@' north
    py_call(Env:render()).