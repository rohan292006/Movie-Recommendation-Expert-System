% ==========================================================
% MOVIE RECOMMENDATION EXPERT SYSTEM
% Practical Assignment 1.2
% Language : Prolog
% Platform : SWI-Prolog
% ==========================================================

:- dynamic preference/1.

% ----------------------------------------------------------
% MOVIE RECOMMENDATION RULES
% ----------------------------------------------------------

% Science Fiction + Adventure + English
recommend(interstellar) :-
    preference(likes_scifi),
    preference(likes_adventure),
    preference(prefers_english).

% Action + Thriller + English
recommend(the_dark_knight) :-
    preference(likes_action),
    preference(likes_thriller),
    preference(prefers_english).

% Comedy + Drama + Hindi
recommend(three_idiots) :-
    preference(likes_comedy),
    preference(likes_drama),
    preference(prefers_hindi).

% Drama + Family + Hindi
recommend(dangal) :-
    preference(likes_drama),
    preference(likes_family),
    preference(prefers_hindi).

% Animation + Family
recommend(toy_story) :-
    preference(likes_animation),
    preference(likes_family).

% Adventure + Comedy + Hindi
recommend(zindagi_na_milegi_dobara) :-
    preference(likes_adventure),
    preference(likes_comedy),
    preference(prefers_hindi).

% Science Fiction + Thriller + English
recommend(inception) :-
    preference(likes_scifi),
    preference(likes_thriller),
    preference(prefers_english).

% Animation + Family + Drama
recommend(the_lion_king) :-
    preference(likes_animation),
    preference(likes_family),
    preference(likes_drama).

% ----------------------------------------------------------
% MOVIE DETAILS
% ----------------------------------------------------------

movie_info(
    interstellar,
    'Science Fiction / Adventure',
    'English'
).

movie_info(
    the_dark_knight,
    'Action / Thriller',
    'English'
).

movie_info(
    three_idiots,
    'Comedy / Drama',
    'Hindi'
).

movie_info(
    dangal,
    'Drama / Family',
    'Hindi'
).

movie_info(
    toy_story,
    'Animation / Family',
    'English'
).

movie_info(
    zindagi_na_milegi_dobara,
    'Adventure / Comedy',
    'Hindi'
).

movie_info(
    inception,
    'Science Fiction / Thriller',
    'English'
).

movie_info(
    the_lion_king,
    'Animation / Drama / Family',
    'English'
).

% ----------------------------------------------------------
% ASK USER FOR PREFERENCES
% ----------------------------------------------------------

ask_preference(Preference) :-
    write('Do you like '),
    write(Preference),
    write('? (yes/no): '),
    read(Response),

    (
        Response == yes
        ->
        assertz(preference(Preference))
        ;
        true
    ).

% ----------------------------------------------------------
% COLLECT USER PREFERENCES
% ----------------------------------------------------------

collect_preferences :-
    ask_preference(likes_action),
    ask_preference(likes_comedy),
    ask_preference(likes_scifi),
    ask_preference(likes_adventure),
    ask_preference(likes_family),
    ask_preference(likes_animation),
    ask_preference(likes_drama),
    ask_preference(likes_thriller),
    ask_preference(prefers_hindi),
    ask_preference(prefers_english).

% ----------------------------------------------------------
% FIND ALL MATCHING MOVIES
% ----------------------------------------------------------

find_recommendations(Movies) :-
    findall(
        Movie,
        recommend(Movie),
        Movies
    ).

% ----------------------------------------------------------
% DISPLAY RECOMMENDATIONS
% ----------------------------------------------------------

display_recommendations([]) :-
    nl,
    writeln('------------------------------------------'),
    writeln('No suitable movie recommendation found.'),
    writeln('Try selecting different preferences.'),
    writeln('------------------------------------------').

display_recommendations(Movies) :-
    Movies \= [],

    nl,
    writeln('=========================================='),
    writeln('          MOVIE RECOMMENDATIONS'),
    writeln('=========================================='),

    display_movies(Movies).

% ----------------------------------------------------------
% DISPLAY MOVIE INFORMATION
% ----------------------------------------------------------

display_movies([]).

display_movies([Movie | Rest]) :-
    movie_info(Movie, Genre, Language),

    write('Movie     : '),
    writeln(Movie),

    write('Genre     : '),
    writeln(Genre),

    write('Language  : '),
    writeln(Language),

    nl,

    display_movies(Rest).

% ----------------------------------------------------------
% CLEAR PREVIOUS PREFERENCES
% ----------------------------------------------------------

clear_preferences :-
    retractall(preference(_)).

% ----------------------------------------------------------
% MAIN PROGRAM
% ----------------------------------------------------------

start :-
    clear_preferences,

    writeln('=========================================='),
    writeln('     MOVIE RECOMMENDATION EXPERT SYSTEM'),
    writeln('=========================================='),

    nl,

    writeln('Answer each question with yes. or no.'),
    nl,

    collect_preferences,

    find_recommendations(Movies),

    display_recommendations(Movies),

    clear_preferences.

% ==========================================================
% END OF PROGRAM
% ==========================================================
