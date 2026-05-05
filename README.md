# Family Tree Explorer

A simple family relationship matchup. Involves simple relationship for simplicity and brushing my basics again. 

## Running

Clone
```sh
git clone <github-link> #will update
```

Then:

```sh
gprolog
```

Compiling the file:

```prolog
?- [family].
```

## Queries to Try

```prolog
% Who are John's children?
?- parent(john, X).

% Is Mary sibling of Mike?
?- sibling(mary, mike).

% Who are Susan's grandparents?
?- grandparent(X, susan).

% Is John an ancestor of Ann?
?- ancestor(john, ann).

% Who are Tom's uncles?
?- uncle(X, tom).

% List all descendants of Paul
?- descendant(X, paul).
```

## Extending

Add more family members and relationships:
- `cousin/2` - extend with common grandparent
- `nephew/2` / `niece/2` - through sibling
- More generations for deeper recursion practice
