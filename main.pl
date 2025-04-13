:- use_module(library(python)).

:- python_import(gymnasium).

:- python_import( nle ).

:-
    env := gymnasium.make(`NetHackScore-v0`),
    env.reset(),  % each reset generates a new dungeon
    env.step(1),  % move agent '@' north
    env.render().