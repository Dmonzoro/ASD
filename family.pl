% Facts
male(komal).
male(rohit).
male(ankush).
female(pramila).
female(vandana).

parent(komal, rohit).
parent(komal, ankush).
parent(pramila, rohit).
parent(pramila, ankush).
parent(vandana, komal).
husband(komal, pramila).

% Rules
wife(Wife, Husband) :- husband(Husband, Wife).

father(Father, Child) :-male(Father), parent(Father, Child).

mother(Mother, Child) :-female(Mother),parent(Mother, Child).

son(Son, Parent) :- male(Son), parent(Parent, Son).

daughter(Daughter, Parent) :-female(Daughter), parent(Parent, Daughter).

sibling(X, Y) :-parent(P, X), parent(P, Y), X \= Y.

brother(Brother, Person) :-male(Brother), sibling(Brother, Person).

grandparent(Grandparent, Grandchild) :-parent(Grandparent, Parent),parent(Parent, Grandchild).

grandmother(Grandmother, Grandchild) :-female(Grandmother), grandparent(Grandmother, Grandchild).

grandchild(Grandchild, Grandparent) :-grandparent(Grandparent, Grandchild).

mother_in_law(MotherInLaw, Person) :-female(MotherInLaw), parent(MotherInLaw, Husband), husband(Husband, Person).

child(Child, Parent) :-parent(Parent, Child).
