= Number Theorem 12th note

== 12.1 Perfect Number

=== Def 12.10

A positive integer $n$ is perfect if $n$ is the sum of its proper divisors.
This is equivalent to say $sigma(n)=2 dot n$.

This first few perfect numbers are $6, 28, 496, 8128, dots$

=== Theorem 12.11

+ [Euclid] If $M_p=2^p-1$ is a Mersenne Prime (in particular $p$ is prime), then $n=2^(p-1)(2^p-1)$ is perfect.
+ [Euler] If $n$ is even and perfect, then $n$ has the above form.

==== Pf.

+ We have $sigma_1(n)=sigma_1(2^(p-1))sigma_1(2^p-1)$ and $sigma_1(2^(p-1))=2^p-1$ by Corollary 12.9.
  If $M_p$ is prime, then $sigma_1(2^p-1)=2^p$.
  Thus $sigma_1(n)=2^p (2^p-1)=2n$.
+ As $n$ is even, we can write $n=2^(p-1) dot q$ for some integer $p>=2$, $q$ odd.
  Then $sigma(n)=sigma(2^(p-1))sigma(q)=(2^p-1)sigma(q)$.
  Since $n$ is perfect, we have $sigma(n)=2n=2^p dot q$.
  Thus $2^p-1$ divides $q$, say $q=(2^p-1) dot r$.
  $ => sigma(q)=2^p dot r. ("to prove" r=1) $
  Now $q$ and $r$ are distinct divisors of $q$ with $q+r=(2^p-1)r+r=2^p dot r=sigma(q)$.
  Hence, $q$ and $r$ must be only divisors of $q$. Thus $r=1$.
  That is $n$ has the form given in (1).

=== Rmk. 12.12

Conjecturally there is now odd perfect number.

== 12.2 Dirichlet Convolution

=== Def 12.13

If $f$ and $g$ are arithmetic functions, then their Dirichlet Convolution(or Dirichlet product)
is the arithmetic functions $f * g$ given by
$ f*g(n)=sum_(d|n)f(d)g(n/d)=sum_(d e=n)f(d) dot g(e) $

=== Ex 12.14

Recall the function $bb(1)="Id"_0$. Then $f*bb(1)(n)=sum_(d|n)f(d)$.
When $f="Id"_k$, we recover the divisor function $sigma_k$.

=== Lemma 12.15

The Dirichlet Convolution is commutative, associative, and has $epsilon$ as an identity.
Namely for all arith. fun. $f,g,h,$ we have
+ $f*g=g*f$
+ $(f*g)*h=f*(g*h)$
+ $f*epsilon=epsilon*f=f$

==== Pf

We only prove (2) ((1),(3) are simple exercise).
We have that $(f*g)*h(n)=sum_(d c=n)(f*g)(d) dot h(c)=sum_(d c=n)(sum_(a b =d)f(a)g(b)) dot h(c)=sum_(a b c =n)f(a)g(b)h(c)$.
Similarly, $f*(g*h)(n)=sum_(a b c =n)f(a)g(b)h(c)$.

=== Lemma 12.17

If $f$ is an arithmetic function with $f(1)!=0$, then there exists an arithmetic function $g$ such that $f*g=epsilon=g*f$ given by
$ g(1)=1/f(1) "and" g(n)=-(1/f(1))sum_(d|n, d<n)g(d)f(n/d) $

==== Pf

We need to show that $g*f=epsilon$, that is $sum_(d|n)g(d)f(n/d)=cases(
  1\, & n=1,
  0\, & n>1
).$

$n=1$ is trivial. If $n>1$ then

$ sum_(d|n)g(d)f(n/d)=g(n)f(1)+sum_(d|n, d<n)g(d)f(n/d)=0 $

=== Def 12.19

The above recursively defined $g$ is called the Dirichlet inverse of $f$, denoted by $f^(-1)$.

Let $G$ denote the set of all arithmetic fun. $f$ for which $f(1)!=0$.

=== Theorem 12.20

$(G,*,epsilon)$ is an abelian group.

==== Pf

Put lemma 12.15, and 12.17 together.

=== Lemma 12.21

$f*g$ is multiplicative if both $f$ and $g$ are.

==== Pf

For coprime $a,b$, we have that

$
  f*g(a b) & =sum_(d|a b)f(d)g((a b)/d) \
           & =sum_(d_1|a)sum_(d_2|b)f(d_1 d_2)g((a b)/(d_1 d_2)) \
           & =sum_(d_1|a)sum_(d_2|b)f(d_1)f(d_2)g(a/d_1)g(b/d_2) \
           & =(sum_(d_1|a)f(d_1)g(a/d_1))(sum_(d_2|b)f(d_2)g(b/d_2)) \
           & =(f*g)(a) dot (f*g)(b)
$

=== Corollary 12.22 (Theorem 7.15)

$ sum_(d|n)phi(d)=n(<=>phi * bb(1)="Id") $

two proofs:

+ By lemma 12.21, both sides are multiplicative, so it suffices to verify the equality at prime powers.
+ Partition

=== Lemma 12.23

If $f in G$ is multiplicative and $f^(-1)$ exists $<=> (f(1)!=0)$, then $f^(-1)$ is multiplicative.

==== Pf

Since $f$ is multiplicative, we have that $f(1)=f(1 dot 1)=f(1) dot f(1)$.
As $f(1)!=0$, so $f(1)=1$.
Suppose that $g=f^(-1)$ is not multiplicative.
Then there is least $m dot n$ such that $g(m n) != g(m) dot g(n)$ and $gcd(m, n)=1$. As $g(1)=1/f(1)=1$,
we have $m dot n > 1$, so $epsilon(m n)=0$. Then
$
  0=(g*f)(m n) & =sum_(d|m n)g(d)f((m n)/d) \
               & =sum_(a|m,b|n)g(a b)f(m/a dot n/b) \
               & "Here, we used our assumption that" m n "is the least..." \
               & =sum_(a|m,b|n,a b < m n)g(a)g(b)f(m/a)f(n/b)+g(m n) \
               & =sum_(a|m)g(a) dot f(m/a) sum_(b|n)g(b) dot f(n/b)-g(m)g(n)+g(m n) \
               & =epsilon(m)epsilon(n)-g(m)g(n)+g(m n) \
               & =-g(m)g(n)+g(m n).
$
Thus $g(m n)=g(m)g(n)$ get contradiction!

=== Corollary 12.24

The set of all multiplicative functions $f$ s.t. $f(1)!=0$ forms an abelian subgroup of $G$.

=== Corollary 12.25

$f(n)=sum_(d|n)g(d)$ is multiplicative iff $g$ is.

In particular, divisor function $sigma_K$ are multiplicative.

=== Problems

Consider $phi*bb(1)="Id", ?*bb(1)="Id"_k$.

*Ex 1*: Show that $?=J_k(n)=n^k product_(p|n)(1-p^(-k))$

*Ex 2*: Show that $psi * 1_"sq"=sigma$, where $1_"sq"$ is the characteristic function for squares.

*HW*: 8.23

=== Def 13.1

We define the Möbius function $mu$ by the formula
$ sum_(d|n)mu(d)=sigma(n)=cases(1\, &"if" n=1, 0\, &"if" n>1) $
(The definition is recursive)

In terms of Dirichlet product, $mu$ is the arith. fun. satisfying $mu*bb(1)=epsilon$.
Why we care? Because $phi * bb(1)="Id", sigma_k="Id"_k*bb(1)$

=== Theorem 13.2 (Möbius Inversion)

The Dirichlet inverse of $bb(1)="Id"_0$ is $mu$.
In particular, $mu$ is multiplicative.
Hence, if $f$ and $g$ are arith. funs satisfying $f=g*bb(1)$, then $g=f*mu$.

This is equivalent to say if $f(n)=sum_(d|n)g(d)$ for all $n$,
then $g(n)=sum_(d|n)f(d)mu(n/d)$ for all $n$.

=== Corollary 13.3

We have that

+ $phi=mu*"Id"$
+ $"Id"_k=mu*sigma_k$

=== Theorem 13.4

Let $omega(n)$ be the number of prime divisors of $n$.
$
  omega(n)=cases(
    (-1)^(omega(n))\, & "if" n "is square free",
    0\, & "otherwise"
  )
$

==== Pfs

===== 1st Pf

Let $mu'$ be the function defined by the above formula.
Check that $mu'$ is multiplicative. Let $epsilon'(n)=sum_(d|n)mu'(d)$.
By Corollary 12.25, $epsilon'$ is multiplicative.
It suffices to show that $epsilon'(p^e)=0$ for each prime power $p^e>1$.
But this follows from the def of $mu'$ immediately.
$epsilon'(p^e)=sum_(f<=e)mu'(p^f)=mu'(p^0)+mu'(p^1)+0=1+(-1)=0$.

===== 2nd

We can show that $mu'$ satisfies the same recurrence relation: $sum_(d|n)mu'(d)=epsilon(n)dots$

=== Ex 13.5

Let us check that $lambda=1_"sq"*mu,(lambda=(-1)^Omega(n))$.(so $lambda(n)=sum_(d^2|n)mu(n/d^2)$)

Hence, $lambda*bb(1)=bb(1)_"sq"$(Maybe not easy to verify directly.)
