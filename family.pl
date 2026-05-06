% FACTS

% parent(Parent, Child)
parent(john, mary).
parent(john, mike).
parent(mary, susan).
parent(mary, tom).
parent(mike, ann).
parent(paul, john).

% male/1 - male individuals
male(john).
male(mike).
male(tom).
male(paul).

% female/1 - female individuals
female(mary).
female(ann).
female(susan).

% ========================
% RULES
% ========================

% sibling(X, Y) - X and Y share at least one parent
sibling(X, Y) :-
    parent(Z, X),
    parent(Z, Y),
    X \= Y.

% grandparent(X, Y) - X is Y's grandparent
grandparent(X, Y) :-
    parent(X, Z),
    parent(Z, Y).

% ancestor(X, Y) - X is an ancestor of Y (recursive)
ancestor(X, Y) :-
    parent(X, Y).
ancestor(X, Y) :-
    parent(X, Z),
    ancestor(Z, Y).

% brother(X, Y) - X is Y's brother (male sibling)
brother(X, Y) :-
    sibling(X, Y),
    male(X).

% sister(X, Y) - X is Y's sister (female sibling)
sister(X, Y) :-
    sibling(X, Y),
    female(X).

% uncle(X, Y) - X is Y's uncle
uncle(X, Y) :-
    parent(Z, Y),
    sibling(X, Z),
    male(X).

% aunt(X, Y) - X is Y's aunt
aunt(X, Y) :-
    parent(Z, Y),
    sibling(X, Z),
    female(X).

% descendant(X, Y) - X is a descendant of Y
descendant(X, Y) :-
    parent(Y, X).
descendant(X, Y) :-
    parent(Y, Z),
    descendant(X, Z).
