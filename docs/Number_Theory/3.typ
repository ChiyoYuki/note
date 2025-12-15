= Number Theorem 3rd note

== 3.1 Modular arithmetic

Motivation: want a weaker version of equality (equivalence relation).
For example, similar triangles, similar matrices, quotient spaces in linear algebra.

=== Def 3.1

A binary relation $~$ on a set $X$ is said to be equivalence
relation, if it is reflexive, symmetric and transitive. That is , for all
$a, b, c in X$, we have

+ $a ~ a$ (reflexive)
+ $a ~ b "iff" b ~ a$ (symmetric)
+ $a ~ b "and" b ~ c$, then $a ~ c$ (transitive)

The equivalence class of $a$ under $~$ is defined as $[a]={x in X | x ~ a}$. $a$ is
called a representative of the class $[a]$. Clearly $[a]=[b]$ iff $a~b$.

=== Def 3.2

Let $n in NN$ and $a,b in ZZ$. We say $a$ is congruent to $b mod (n)$,
written $a equiv b mod n$ if $a$ and $b$ leave the same remainder when divided
by $n$.

Clearly that is equi. to $n|a-b$.

=== Lemma 3.3

Congruence modulo $n$ is an equivalence relation.

We denote the set of equivalence classes(aka. congruence classes) modulo $n$ by $ZZ_n$.

=== Ex 3.4

$ZZ_4$ has $4$ elements ${[0],[1],[2],[3]}, [3]={4k+3|k in ZZ}$

We want to define addition, substraction#footnote[原文如此，似为笔误] <fn1>
and multiplication on the set $ZZ_n$.

Here is a natural $[a]+[b]=[a+b], [a]-[b]=[a-b], [a][b]=[a dot b]$

==== (Lemma)

The three modular operations are well-defined.

=== Ex 3.5

Find the residue of $3^2025 mod 7$.

$&(3^3)^m = (27)^m &equiv& (-1)^m mod 7 \
m "is odd" &&equiv& -1 mod 7$

=== Def 3.6 (Group)

A group is a set $G$ with a binary operation $(dot)$ satisfying

- the Associativity: $(a dot b) dot c=a dot (b dot c)$
- $exists$ Identity $e$: $e dot a=a=a dot e$
- $exists$ Inverse $a^(-1)$: $a^(-1) dot a=a dot a^(-1)=e$

A group is called abelian if the operation is commutative.

=== Def 3.7 (Ring)

A ring is a set $R$ with two binary operation $(+, dot)$ satisfying

- Additive structure: $(R,+)$ is an abelian group (with zero element $0$ as identity);
- Associativity: $r dot (s dot t)=(r dot s) dot t$ for all $r,s,t in R$
- Distributivity: $r dot (s+t)=r s + r t, (s+t) dot r = s r + t r$
- Identity: there $1 in R$ such that $1 dot r = r dot 1 = r$.

==== Example:

Matrix ring $M_n$, polynomial ring.

A ring is called commutative if $r s = s r$ for all $r,s in R$.

=== Theorem 3.8

$ZZ_n$ under the modular addition and multiplication forms a ring.

=== Def 3.9

A set of integers containing one representative from each congruent class
is called a complete set of residue $mod n$.

=== Ex 3.10

Here are two standard classes:

+ Least non-negative residues $mod n$ is $0, 1, 2, dots, n-1$
+ Least absolute residues $mod n$ are
  $cases(
    0\, plus.minus 1\, dots\, plus.minus (n-1)/2 (n "odd"), 0\,
    plus.minus 1\, dots\, plus.minus (n-2)/2\, (n-1)/2 (n "even")
  )$

=== Lemma 3.11

For $f in ZZ[x]$, if $underbracket(a equiv b mod n, [a]=[b] in ZZ_n)$, then $underbracket(f(a) equiv f(b) mod n, [f(a)]=[f(b)] in ZZ_n)$.

=== Ex 3.12

Find a solution of $x^5+x^3+x^2+2=0$

Consider $x^5+x^3+x^2+2 equiv 0 mod 4$ (no solution)

==== Conjecture

$f(x)=0$ has an integer solution
iff $f(x) equiv 0 (mod n)$ has a solution for all $n in NN$.

=== Ex 3.13 (failure of Hasse Principle)

The polynomial $f(x)=(x^2-13) dot (x^2-17) dot (x^2-221)$ has no integer root.
But we will see later that for each integer $n>1$ there is a solution for $f(x) equiv 0 mod n$.

=== Ex 3.14

Euler found a remarkable polynomial $f(x)=x^2+x+41, (1, 2, 3, 5, 11, 17, 41)$
which is prime for each integer $n$, $-41 < n < 40$.

(Conjecture the recurrence given by $a_n = a_(n-1) + gcd(n, a_(n-1))$ and $a_1 = 7$.
Then the sequence of difference contains only $1$ and primes.)#footnote[括号内部内容于3.15及其证明后写下]

=== Theorem 3.15

There is no non-constant polynomial $f(x)$ with integer coefficients such that $f(x)$ assume prime values at each integer $x$.

==== Pf

Suppose $f(x)$ is prime for each integer $x$.
Pick any $a in ZZ, f(a)=p$.
Consider all $b equiv a mod p$. Then by Lemma 3.11 $f(b) equiv f(a) mod p$.$f(b)$ as a prime $equiv p (mod p) => f(b)=p => f-p$ has infinitely many zeros. $arrow.zigzag$

*HW:* 3.2, 3.4, 3.7(d), 3.21

*Problem*
+ Prove that if $a equiv b mod n$, then $gcd(a, n)=gcd(b, n)$
+ Prove that the following:
  + $7|5^(2n)+3 dot 2^(5n-2)$
  + $13|3^(n+2)+4^(2n+1)$
  + $27|2^(5n+1)+5^(n+2)$
+ + If $a equiv b mod n_1$ and $a equiv b mod n_2$, prove that $a equiv b mod n$
    where $n="l.c.m"(n_1,n_2)$
  + If $a equiv b mod n_1$ and $a equiv c mod n_2$, prove that $b equiv c mod n$
    where $n="g.c.d"(n_1,n_2)$
+ If $c a equiv c b mod n$, then $a equiv b mod n/d, d=gcd(c, n)$
+ Prove that $f(ZZ[x])$ has no integer solution if $f(0)$ and $f(1)$ are both odd.

== 3.3 Solving Linear Congruence#footnote[原文缺少3.2小节]

=== Theorem 3.16

The linear congruence $a x equiv b mod n$ has a solution
iff $d:=gcd(a, n)$ divides $b$. If $d|b$, then general solution
is given by $x=x_0+(n t)/d$ where $t in ZZ$. Moreover, the solutions have
exactly $d$ congruence classes $mod n$. The representative are given by $t=0, 1, dots, d-1$.

==== Pf

We only need to verify the moreover part. Note that $x_0+(n t)/d equiv x_0+(n t')/d (mod n)$
iff $n|n(t-t')/d$ iff $d|t-t'$. So letting $t$  ranging over $0, 1, dots, d-1$
we get all congruence classes of solutions $mod n$.

=== Corollary 3.17

If $gcd(a, n)=1$, then the linear congruence $a x=b mod n$
has a unique solution.

=== Rmk 3.18

This suggests that if $gcd(a, n)=1$, then we can define
division $[b]/[a] in ZZ_n$ as the unique class $[x]$ such that $[a][x]=[b]$.
In particular, $ZZ_p \\ {[0]}$ forms a group.

=== Lemma 3.19

+ If $m$ divides $a,b,n$ and let $(a',b',n')=(a,b,n)\/m$,
  then $a x equiv n mod n "iff" a' x equiv b' mod n'$.
+ If $gcd(a, n)=1$, $m divides a,b$ and let $(a',b')=(a,b)\/m$,
  then $a x equiv b mod n "iff" a'x equiv b' mod n$.

==== Pf

+ easy.
+ $a x equiv b mod n => a x - b = q n => a' x - b' = (q n)/m$, so $m|q n$.
  $m$ as a factor of $a$ must be coprime to $n$, so $m|q$. Therefore $a' x equiv b mod n$

  The converse if obvious.

=== Algorithm 3.20

Goal: using Lemma 3.19 to reduce $a$ to $1$.

Step 0: Calculate $d=gcd(a, n)$. If $d divides.not b$, then no solution. Otherwise go to step 1.

Step 1: Now $d$ divides $a,b,n$, we use Lemma 3.19(a)
to replace the original one by $a' x equiv b' mod n'$ where $(a',b',n')=(a,b,n)\/d$.

Step 2: Now we can use Lemma 3.19(b) to replace the previous one by a
new congruence $a'' x equiv b'' mod n'$ where $(a'',b'')=(a',b')\/gcd(a', b')$.
If $a''=1$, then done; otherwise goes to step 3.

Step 3: Since $gcd(a'', b'')=1$, we can replace $b''$ by $b''+k n$ for appropriate $k$ such
that $gcd(a'', b'')>1$. Then goes back to step 3 @fn1. This procedure must terminates until $a''=1$.

Solve $10x equiv 6 mod 14$

Step 0: $gcd(10, 14)=2$

Step 1: $5x equiv 3 mod 7$

Step 2,3: $5x equiv 10 mod 7$

$x equiv 2 mod 7$
