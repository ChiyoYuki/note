= Topology 9th note

== Topology Sine Curve

$X=overbracket({(0,y) in E^2|-1<=y<=1},"A") union overbracket({(x,sin 1/x) in E^2 | 0<x<=1},"B") subset E^2$

#image("./9-1.png")

+ $X$ is connected.

  $B$ is connected, since $B tilde.equiv (0,1]," "(x,sin 1/x) mapsto x$

  $X=overline(B)$. So $X$ is connected.

+ $X$ in not path connected. Suppose obverwise. Then $exists$ a path $f:[0,1]->X$, s.t. $f(0) = (0,0) in A$ and $f(1)=(1,sin 1) in B$.

Since $A$ is closed in $X$, $f^(-1)(A)$ is closed in $[0,1]$.

Let $b=max f^(-1)(A)$. Then $f(b) in A$, and $f((b,1]) subset B$.

$h=f compose g:[0,1] arrow^g [b,1] ->^f X, t mapsto (1-t)b+t dot 1 mapsto (x(t),y(t))$

$h(0) = (x(0),y(0)) = (0,y(0)) in A$.

$h(t) = (x(t),y(t)) in B, t in (0,1], x(t) > 0$.

此处暂缺

Since $x(t)$ is continuous, by Intermediate Value THM, $exists t_n in (0,1/n)$, s.t. $x(t_n)=1/(pi/2+(n+2k)pi)$.

Thus $y(t_n)=sin 1/(x(t_n))=sin (pi/2+(n+2k))pi=sin(pi/2+n pi)=(-1)^n$.The claim holds.#h(1fr)$qed$

== 1.Locally path connected

=== Def: 

$X$ topol. space, if $forall x in X$ and any nbhd $U$ of $x$,
$exists$ a path connected nbhd $V$ of $x$, s.t. $x in V subset U$,
then $X$ is locally path connected.

=== Rmk:

If $X$ is locally path connected, then each $x in X$ has a path connected nbhd.

=== Eg:

Open subsets in $E^n$ are locally path connected, not necessarily path connected.

$A subset E^n$ open, $forall x in A$ and any nbhd $U$ of $x$ in $A$,
so $exists underbracket(B(x,epsilon),"path connected")$, s.t. $x in B(x,epsilon) subset U$.

=== Eg:

$X={(x,y) in E^2|x in QQ "or" y = 0}$

$X$ is path connected and is not locally path connected.

=== Eg:

Topologist's Sine Curve is not locally path connected.

$(0,1/2) in A subset X$

此处暂缺

$A$ is open in $E^n$, then $A$ is connected $arrow.l.r.double A$ is path connected.

== 2. Distinguish Spaces

=== Lemma:

$f:X->Y$ is a homeomorphism. $A subset X$. Then $f|_A:A->f(A)$ is a homeomorphism.

==== Pf.

$f|_A$ is bijective and continuous. It suffices to show $f|_A$ is open.

Suppose $U$ is open in $X$, then $U inter A$ is open in $A$. Since $f$ is bijective.
$f(U inter A)=f(U) inter f(A)$. $f(U)$ is open in $Y$, so $f(U) inter f(A)$ is open in $f(A)$. Therefore $f|_A$ is open. #h(1fr)$qed$

=== Eg:

$E^1 tilde.equiv.not E^n, n>=2$

Suppose $f:EE^1 -> EE_n$ is a homeomorphism, then $f|_(EE\\{0}): underbracket(EE^1\\0, "disconnected") -> underbracket(EE^n \\ {f(0)},"connected")$ is a homeomorphism. Contradiction! #h(1fr)$qed$

=== Eg:

Suppose $f:S^1 -> S^n$ is a homeomorphism. $p in S^1$. Then $f|_(S^1\\{p}):S^1\\{p} -> S^n\\{f(p)}$ is a homeomorphism. Contradiction! #h(1fr)$qed$

== 3. Quotient Spaces

$(X,T)$: topol. space.

$~$: an equivalence relation on $X$.

$X\/N$: the quotient set.

$q:X arrow.long_(x mapsto [x]) x\/N$: the canonical map.

=== Lemma:

$tilde.op(T)={U subset X\/N|q^(-1)(U)" is open in" X}$ is a topology on $X\/N$.

==== Pf:

+ $emptyset, X\/N in tilde.op(T)$
+ $U_lambda in tilde.op(T), lambda in Lambda$, then $q^(-1)(union.big_(lambda in Lambda) U_lambda)=union.big_(lambda in Lambda)q^(-1)(U_lambda)$ is open in $X$. So $union.big_(lambda in Lambda) U_lambda in tilde.op(T)$.
+ $U_1,U_2 in tilde(T), q^(-1)(U_1 inter U_2)=q^(-1)(U_1) inter q^(-1)(U_2)$ is open in $X$. So $U_1 inter U_2 in tilde(T)$ #h(1fr)$qed$

此处暂缺

=== Lemma(\*):

$q:X -> X\/N$ is a quotient map. $Z$ is a topol. space.
$f: X\/N -> Z$ is a map.

Then $f$ is continuous $arrow.l.r.double f compose q$ is continuous.

==== Pf:

- $arrow.r.double$ Obvious.
- $arrow.l.double$ $forall$ open set $V subset Z, (f compose q)^(-1)(V)=q^(-1)(f^(-1)(V))$ is open in $X$. By def'n, f^(-1)(V) is open in $X\/N$. So $f$ is continuous. #h(1fr)$qed$

=== Lemma:

$q:X -> X\/N$ is a quotient map, then $C subset X \/ N$ is closed $arrow.l.r.double q(-1)(C)$ is closed in $X$.

=== Def:

(Abstract version)

$X,Y$: topol. spaces.

+ $f:X->Y$ is surjective;
+ $U subset Y$ is open(closed) $arrow.l.r.double f^(-1)(U) subset X$ is open(closed).

then $f$ is called a *quotient map*.


=== Rmk:

Lemma(\*) holds for abstract version of quotient maps.

=== Lemma:

$x_1,x_2 in X, x_1 \~_f x_2 arrow.l.r.double f(x_1)=f(x_2)$

Then $X\/\~_f tilde.equiv Y$.

==== Pf

$h:X\/\~_f arrow.r.long_([x] mapsto f(x)) Y$ is well-defined and bijective. $f=h compose q$.

$X ->^q X\/\~_f ->^h Y, X ->^f Y$: $f$ is continuous $=> h$ is continuous. 

$X ->^f Y ->^(h^(-1)) X\/\~_f , X ->^q X\/\~_f$: $q$ is continuous $=> h^(-1)$ is continuous. 

此处暂缺

=== Lemma:

$f:X->Y,g:Y->Z$ are two quotient maps. Then $g compose f:X->Z$ is a quotient map.

==== Pf:

+ Since $f$ and $g$ are both surjective, $g compose f$ is surjective.
+ $g compose f$ is continuous. Suppose $U subset Z$ and $(g compose f)^(-1)(U)$ is open in $X$. $(g compose f)^(-1)(U)=f^(-1)(g^(-1)(U))$ Since $f$ is a quotient map, $g^(-1)(U)$ is open in $Y$. Since $g$ is a quotient map, $U$ is open in $Z$. #h(1fr)$qed$

=== Rmk:

+ $f_1:X_1 -> Y_1, f_2:X_2 -> Y_2$ are quotient maps.
  
  $f_1 times f_2:X_1 times X_2 -> Y_1 times Y_2$ is not necessarily a quotient map.
+ $f:X->Y$ is a quotient map, $X$ is Hausdorff, $Y$ is not necessarily Hausdorff.
+ A quotient map $f:X->Y$ is not necessarily open(closed).

HW: P80: 27, 28, 29; P86: 22, 25, 26
