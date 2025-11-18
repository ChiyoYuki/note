= Topology 2nd note

== 1. Basis

=== Eg:

$RR, cal(B):{(a,b),(a,b)-K}, K={1/n | n in ZZ_+}$

$cal(B)$ is a basis. 

$(a,b) inter ((c,d)-K)=(max{a,c},min{b,d}) - K$

$((a,b)-K) inter ((c,d)-K)=(max{a,c},min{b,d}) - K$

$cal(B)$ generate the $K$-topology in $RR$.

=== Eg:

$RR, cal(B)={[n,n+1) | n in ZZ}$ is a basis.

=== Eg:

$X = RR^n, x=(x_1, dots,  x_n), y = (y_1, dots, y_n)$

$d(x,y) = sqrt((x_1 - y_1)^2 + dots +(x_n-y_n)^2), 
B(x,epsilon) = {y in RR^n | d(x,y) < epsilon}$

$cal(B)_1 = {B(x,epsilon) subset RR^n | x in RR^n, epsilon > 0}$

=== Lemma:

$cal(B)_1$ is a basis on $RR^n$.

这里少张图

$cal(B)_1$ generates the standard topology on $RR^n$
denoted by $EE^n$. *Euclidean Space*.

$cal(B)_2 = {(a_1,b_1) times dots times (a_n,b_n) | (a_i, b_i) subset RR}$

=== Lemma:

$cal(B)_2$ is a basis on $RR_n$.

这里少张图

$&((a_1,b_1) times dots times (a_n,b_n))
inter 
((c_1,d_1)times dots times (c_n, d_n))\ 
=&((a_1,b_1) inter (c_1,d_1) times dots times (a_n,b_n) inter (c_n,d_n))
in cal(B)_2$

=== Question:

Does $cal(B)_2$ generate the standard topology on $RR^n$ ?

=== Proposition:

$(X,cal(T))$ is a topol. space, 
and $cal(C)$ is a #underline[collectopn of open sets] in $X$. 
If $forall$ open set $U subset X$ 
and $forall x in U, exists$ an open set $V in cal(C)$, 
s.t. $underline(x in V subset U)$. 
Then $cal(C)$ is a basis that generates the given topology $cal(T)$. 

\[Topology $~>$ Basis\]

==== Pf.

+ We check that $cal(C)$ is a basis.
  
  + $forall x in X, X in cal(T)$,
    by assumption, $exists$ an open set $V$ in $cal(C)$,
    s.t. $x in V subset X$.
  
  + Suppose $V_1, V_2 in cal(C)$. $V_1 inter V_2$ is open.
    $forall x in V_1 inter V_2$, by assumption, $exists V_3 in cal(C)$,
    s.t. $x in V_3 subset V_1 inter V_2$.
  So $cal(C)$ is a basis.

+ Suppose $cal(C)$ generates the topology $T_1$.
  We check that $cal(T)_1 = cal(T)$.

  - "$subset$"
    
    $forall W in cal(T_1), W$ is a union of subsets in $cal(C)$,
    all of which is open in $cal(T)$.
    So $W in cal(T)$. Thus $cal(T_1) subset cal(T)$.
  
  - "$supset$"
  
    $forall U in cal(T)$. $forall x in U$, by assumption, $exists V in cal(C)$,
    s.t. $x in V subset U$.
    By previous lemma, $U in cal(T_1)$. Thus $cal(T) subset cal(T)_1$.

  therefore, $cal(T)_1 = cal(T)$.#h(1fr)$qed$

=== Answer to the Question: *Yes!*

+ $(a_1,b_1) times dots times (a_n,b_n)$ is open in $EE^n$.

  这里少张图

+ 这里少张图

  $U$ open in $EE^n, forall x in U, exists V in cal(B)_2$,
  s.t. $x in V subset U$.

== 2. Subspace

$(X,cal(T))$ is a topol. space. $A subset X$.
$cal(T)_A={U inter A | U in cal(T)}$

=== Proposition

$cal(T)_A$ is a topology on $A$.

==== Pf:

+ $emptyset in cal(T)_A (emptyset = emptyset inter A), 
  A in cal(T)_A (A = X inter A).$

+ $U_lambda inter A, lambda in Lambda$. 
  $U_lambda in cal(T).$
  $union.big_(lambda in Lambda)(U_lambda inter A)
  =(union.big_(lambda in Lambda)U_lambda) inter A
  in cal(T)_A$.
  Since $union.big_(lambda in Lambda) U_lambda in cal(T)$.

+ $(U_1 inter A) inter (U_2 inter A) = (U_1 inter U_2) inter A in cal(T)_A,$
  since $U_1 inter U_2 in T$.#h(1fr)$qed$

=== Def:

$(A,cal(T)_A)$ is called a subspace of $(X,cal(T))$.

$cal(T)_A$ is called the subspace (or induced) topology on $A$.

=== Eg:

$ZZ subset RR_("std"), forall z in ZZ, {z}=(z-1/2,z+1/2) inter ZZ$ is open.

The induced topology on $ZZ$ is discrete.

=== Eg:

$[0,1] subset RR_("std")$

$[0,0.3), (0.7,1]$ are open in the subspace topology.

=== Lemma:

$(X,cal(T))$ is a topol. space, $cal(B)$ is a basis generate $cal(T)$.

$A subset X, cal(B)_A={B inter A | B in cal(B)}$.
Then $cal(B)_A$ is a basis on $A$ 
generating the subspace topology $cal(T)_A$.

==== Pf:

+ $forall B in cal(B), B$ is open in $cal(T)$. So $B inter A in cal(T)_A$.

+ $forall U inter A in cal(T)_A$, where $U in cal(T)$.
  $forall x in U inter A, exists B in cal(B)$, s.t. $x in B subset U.$
  Then $x in B inter A subset U inter A$, where $B inter A in cal(B)_A$.

By previous proposition, the lemma holds. #h(1fr)$qed$

=== Eg:

$S^1=$ 图片 $subset EE^2$.

=== Eg:

$S^2=$ 图片 $subset EE^3$.

=== Lemma

$(X,cal(T))$ is a topol. space, $B subset A subset X$.
Let $(A,cal(T)_A)$ and $(B,cal(T)_B)$ be the subspaces of $(X,cal(T))$,
and $(B,(cal(T)_A)_B)$ be the subspace of $(A,cal(T)_A)$.
Then $(cal(T)_A)_B = cal(T)_B$.

==== Pf:

- "$subset$"

  $forall U in (cal(T)_A)_B$, 
  then $exists$ an open set $U_1 in cal(T)_A,$ s.t. $U=U_1 inter B$.

  Since $U_1 in cal(T)_A, exists$ an open set $U_2 in cal(T),$
  s.t. $U_1 = U_2 inter A$. So $U = (U_2 inter A) inter B = U_2 inter B$.
  Therefore $U in cal(T)_B$.

- "$supset$"

  $forall U in cal(T)_B, U = U_2 inter B$, where $U_2 in cal(T)$. 
  $U = (U_2 inter A) inter B$, 
  where $U_2 inter A in cal(T)_A$. So $U in (cal(T)_A)_B$.#h(1fr)$qed$

== 3. Product Space

=== Def

$X,Y:$ topol. spaces. $X times Y:$ Cartesian product.

$cal(B) = {U times V | U "is open in" X, V "is open in" Y}$

=== Lemma

$cal(B)$ is a basis on $X times Y$.

==== Pf:

+ $forall (x,y) in X times Y, (x,y) in X times Y in cal(B)$.

+ $U_1 times V_1, U_2 times V_2 in cal(B). 
  (U_1 times V_1) inter (U_2 times V_2) 
  = (U_1 inter U_2) times (V_1 inter V_2) in cal(B)$

  这里少张图

  So $cal(B)$ is a basis on $X times Y$.#h(1fr)$qed$

The topology generated by $cal(B)$
is called the #underline[product topology] on $X times Y$.

=== Lemma

If $cal(B)_1$ is a basis for $X$, and $cal(B)_2$ is a basis for $Y$,
then $cal(B)_3={B_1 times B_2 | B_i in cal(B)_i}$
is a basis generating the product topology on $X times Y$.

==== Pf:

+ $forall B_1 times B_2 in cal(B)_3, B_1 times B_2$ is open in $X times Y$.

+ Suppose $W$ is open in $X times Y. forall (x,y) in W.$
  By definition, $exists U ("open in" X), V("open in" Y),$ 
  s.t. $(x,y) in U times V subset W$.

  这里少张图

  $exists B_1 in cal(B)_1,$ s.t. $x in B_1 subset U$

  $exists B_2 in cal(B)_2,$ s.t. $x in B_2 subset V$

  Hence $(x,y) in B_1 times B_2 subset U times V subset W$.

By a previous proposition, the lemma holds.#h(1fr)$qed$

=== Eg

$&EE^2& = &EE^1& times &EE^1& \
&union& &union& &union& \
&(a,b) times (c,d)& &(a,b)& &(c,d)&$: basis elemts.

=== Lemma

$X,Y:$ topol.spaces. $A subset X, B subset Y.$
Then the #underline[induced topology] on $A times B$ 
as a subspace of $X times Y$
is the #box(stroke: 1pt + black, outset: 1pt)[same] 
as the #underline[product topology] on $A times B$,
where $A, B$ are subspaces of $X, Y$, respectively.

==== Pf:

$cal(B)={(U inter A) times (V inter B) | U "is open in" X, V "is open in" Y}$
generates teh product topol.

We check that $cal(B)$ generates the induced topol. on $A times B$ as well.

+ $(U inter A) times (V inter B) = (U times V) inter (A times B)$.

  Since $U times V$ is open in $X times Y, (U inter A) times (V inter B)$
  is open in the the induced topology on $A times B$.

+ Suppose $W$ is open in the induced topol. on $A times B$.

  Then $exists W_1$(open in $X times Y$), s.t. $W = W_1 inter (A times B)$.

  $forall (x,y) in W = W_1 inter (A times B) subset W_1,
  exists U_1("open in" X), V_1("open in" Y),$
  s.t. $(x,y) in U_1 times V_1 subset W_1$.

  So $(x,y) in 
  underbracket((U_1 times V_1) inter (A times B),
  =(U_1 inter A) times (V_1 inter B) in B) 
  subset W_1 inter (A times B) = W$
  #h(1fr)$qed$

=== Eg

$S^1 subset EE^2, [0,1] subset EE^1,
S^1 times [0,1] subset EE^2 times EE^1 = EE^3$

这里少张图

Cylinder

=== Eg 

$S^1 subset EE^2, S^1 subset EE^2,
S^1 times S^1 subset EE^2 times EE^2 = EE^4$

这里少张图

Torus

=== Def

product topology on $X_1 times X_2 times dots times X_n$,
where $X_i$ is a topol. space.

$cal(B) = {U_1 times U_2 times dots times U_n | U_i "is open in" X_i}$
is a basis.

=== Def

$p_i: X_1 times X_2 times dots times X_n &-> X_i \
x_1 times x_2 times dots times x_n &|-> x_i$ 

is a projective.

== 4. Closed set

=== Def

$X$ is a topol. space, $C subset X$.
$C$ is called a closed subset if $X - C$ is open.

=== Eg

$EE^1, [a,b]$ is closed; $(-infinity, b]$ is closed.

$EE^2, overline(B(x,epsilon)):={y in EE^2 | d(x,y) <= epsilon}$ is closed.

=== Eg

$RR_"fc"$ finite complement topology

$C subset RR_"fc"$ is closed $<=> C = RR$ or finite subsets.

=== Proposition

$X$ is a topol. space, then

+ $emptyset$ and $X$ are closed;

+ Arbitrary interinterion of closed sets is closed;

  $C_lambda, lambda in Lambda$ is closed in $X$. 
  $X - inter.big_(lambda in Lambda)C_lambda 
  = union.big_(lambda in Lambda)(X-C_lambda)$ is open in $X$.
  So $inter.big_(lambda in Lambda)C_lambda$ is closed in $X$.

+ The union of finitely many closed sets is closed.
  
  $C_1, C_2$ is closed in $X$, $X-(C_1 union C_2) = (X - C_1) inter (X - C_2)$
  is open in $X$. So $C_1 union C_2$ is closed in $X$.

=== Eg

这里缺少一个讲义存在但是课上没讲的例子

=== Eg

$EE^n$, a single point set ${p_t}$ is closed.

$EE^n - {p_t}$ is open. $x in EE^n-{p_t}, exists epsilon > 0$,
s.t. $x in B(x,epsilon) subset EE^n - {p_t}$.

=== Eg

$RR, cal(B)={[n,n+1) | n in ZZ}$ generates a topology $cal(T)$.

Then ${0}$ is not closed in $cal(T)$.

==== Pf

Suppose $RR \\ {0}=(-infinity,0) union (0,+infinity)$ is open.
$1/2 in RR \\ {0}$, then $exists$ a basis element $[n,n+1), n in ZZ$,
s.t. $1/2 in [n,n+1) subset RR \\ {0}$.

No such $n$ exists. Contradction!

=== Lemma

$(X,cal(T)):$ topol. space, $A subset X, (A,cal(T)_A):$ subspace.

Then $C subset A$ is closed in $(A,cal(T)_A) 
<=> exists$ a closed set $C_1$ in $X$, s.t. $C = C_1 inter A$.

==== Pf

$&C "is closed in" (A,cal(T)_A)\
<=>&A-C "is open in" (A,cal(T)_A)\
<=>&exists "an open set" U_1 "in" X, "s.t." A - C = U_1 inter A 
"i.e." C=(X-U_1)inter A$

这里少张图

Here $X - U_1$ is closed in $X$. Set $C_1 = X- U_1$.
Then $C = C_1 inter A$.#h(1fr)$qed$

== 5. Hausdorff

=== Def 

A topol. space $X$ is Hausdorff if 
$forall$ any pair of distant points $x$ and $y$,
$exists$ disjoint nbhds $U$ and $V$ of $x$ and $y$ respectively.

这里少张图

$U inter V = emptyset$

=== Eg

$EE^n$ is Hausdorff.

=== Eg 

$X$ with trivial topology is not Hausdorff, 
where $X$ has at least $2$ elements.

=== Lemma

If $X$ is Hausdorff, then every single point set is closed.

==== Pf:

$forall {x} subset X$, we show that $X \\ {x}$ is open.
$forall y in X \\ {x}, y != x$. Since $X$ is Hausdorff,
$exists$ nbhd $U_y$ of $y$, nbhd $U_x$ of $x$, s.t. 
$U_x inter U_y = emptyset$. $y in U_y subset x \\ {x}$.
So $X \\ {x}$ is open, and ${x}$ is closed.

=== Eg

$RR, cal(B) = {[n,n+1) | n in ZZ}$ generates $cal(T), cal(T)$ is not Hausdorff.

=== Eg

$RR_"fc"$ is not Hausdorff.(every single point set is closed)

$x != y in RR$. Suppose $exists$ nbhds $U_x$ of $x$, $U_y$ of $y$,
s.t. $U_x inter U_y = emptyset$, them $underbracket(U_y,"infinite") 
subset underbracket(RR - U_x,"finite")$. 
Contradction! #h(1fr)$qed$

== HW

$section 13: 5,6,7,8\
section 16: 3,4,6\
section 17: 2,3,4$