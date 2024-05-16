female(pam).
female(liz).
female(pat).
female(ann).
male(tom).
male(bob).
male(jim).

parent(pam, bob).
parent(tom, bob).
parent(tom, liz).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

grandparent(X, Z) :-
  parent(X, Y),
  parent(Y, Z).

same_parent(X, Y) :-
  parent(Z, X),
  parent(Z, Y),
  X \= Y.

has_child(X) :-
  parent(X, _).

offspring(X, Y) :-
  parent(X, Y).

mother(X, Y) :-
  parent(X,Y),
  female(X).

sister(X, Y) :-
  same_parent(X, Y),
  female(X).

happy(X) :-
	has_child(X).

hastwochildren(X) :-
  parent(X, Y),
  sister(Y,_).

grandchild(X, Z) :-
  parent(Y, X),
  parent(Z, Y).

aunt(X,Y) :-
  parent(Z,Y),
  sister(X,Z).

predecessor(X, Z) :-
  parent(X, Z).

predecessor(X, Z) :-
  parent(X, Y),
  predecessor(Y, Z).

% New relations
maternalgrandmother(X,Y) :-
  female(X),
  parent(X,Z),
  female(Z),
  parent(Z,Y).

maternalgrandfather(X,Y) :-
  male(X),
  parent(X,Z),
  female(Z),
  parent(Z,Y).

paternalgrandmother(X,Y) :-
  female(X),
  parent(X,Z),
  male(Z),
  parent(Z,Y).

paternalgrandfather(X,Y) :-
  male(X),
  parent(X,Z),
  male(Z),
  parent(Z,Y).
