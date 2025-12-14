= Number Theorem 1st note

$a, b, c$: integers;
$m, n$: positive integers;
$ZZ$: set of integers;
$NN$: set of positive integers;
$RR$: set of real numbers;
$CC$: set of all complex numbers.

=== Theorem 1.1

If $a, b in ZZ$ with $b > 0$, then there is a unique pair of integers $q$ and $r$
such that $a = q b + r$ and $0 <= r < b$.

==== Pf

The set $S={a-n b | n in ZZ}$ contain some non-negative integers,
so $S inter NN$ has a least element, say $r = a - q b >= 0$ for some integer $q$.
Then it's easy to see that such an $r$ is our desired.

=== Rmk 1.2

We can replace $b > 0$ by $b != 0$, then we require $0 <= r < |b|$.

=== Def 1.3

If $r = 0$, we say that $b$ divides $a$, denote $b|a$.
In this case we also say that $b$ is a factor of $a$, or $a$ is a multiple of $b$.
According to this, every integer divides $0$.

=== Ex 1.4

If $n$ is a square, then $n$ leaves a reminder $0$ or $1$ after divides by $4$.

$n = 2k, n^2=4k^2; n=2k+1, n^2=4k^2+4k+1$

=== Prop 1.5

If $c$ divides $a_1, dots, a^k$, then $c$ divides any $ZZ$-linear combination
of $a_1, dots, a_k$.

=== Def 1.6

If $d|a$ and $d|b$, we say that $d$ is a common divisor of $a$ and $b$.
All common divisors of $a$ and $b$ are clearly bounded (unless $a=b=0$).
So there is a unique greatest common divisor of $a$ and $b$, denote by $gcd(a, b)$.

=== Lemma 1.7

If $a=q b +r$ then $gcd(a, b)=gcd(b, r)$

==== Pf

Use Prof 1.5 and notice that $r=a-q b$.

We can use Lemma 1.7 repeatedly to compute $gcd(a, b)$ for any integer $a$ and $b$.

After ruling out a few trivial cases, we may assume $a>b>0$.
By division algorithm, we write $a=q_1 b + r_1$. If $r_1=0$, then $d=b$ and we are done.
Otherwise we write $b=q_2 dot r_1 + r_2$. If $r_2=0$, then $d=r_1$ and we are done.
Continue in this fashion, we reach the least two steps
$
  r_(n-3) & =q_(n-1) dot r_(n-2)+r_(n-1) & "with" & 0 < r_(n-1) < r_(n-2) \
  r_(n-2) & =q_(n-1) dot r_(n-1)+r_(n)   & "with" & r_n = 0
$

=== Theorem 1.8 (Euclid's algorithm)

In the above calculation we have $gcd(a, b)=r_(n-1)$.

=== Ex 1.9

Calculate $gcd(1817, 2024)=23$.

=== Rmk 1.10

The result extends to any Euclidean ring. For example, the polynomial ring $QQ[x]$.

=== Theorem 1.11 (Bezout's identity)

If $a,b in ZZ$ not both $0$, then there exists integers $u$ and $v$
such that $gcd(a, b)=u dot a + v dot b$.

==== Pf

Euclid's algorithm + induction

Start from $gcd(a, b) = r_(n-1) = r_(n-3) - q_(n-1) dot r_(n-2)$,
then eliminate $r_(n-2)$ using $r_(n-2) = r_(n-4) - q_(n-2) dot r_(n-3)$.
Working backwards this way until we reach $r_(n-1) = a u+ b v$ for some $u,v in ZZ$.

Extended these results to $h$ numbers [Exercise 1.11] using the identity [Exercise]
$ gcd(a_1, dots, a_k)=gcd(gcd(a_1, a_2), a_3, dots, a_k) $

=== Corollary 1.13

Suppose that $gcd(a, b)=d$. Then an integer $c$ is of the form $a x + b y$ for some $x,y in ZZ$
if and only of $c$ is a multiple of $d$. In particular. $d$ is the least integer of this form.

==== Pf

$\" => \" c = a x + b y = d dot a' dot x + d dot b' dot y = d(a' x + b' y)$

$\" arrow.double.l \" c = k d =^"Bezout" k(a u + b y) = a(k u) + b(k v)$

=== Def 1.14

Two integers $a$ and $b$ are coprime (or relatively prime) if $gcd(a, b)=1$.

More generally,
a set of integers ${a_1,a_2,dots,a_k}$ are coprime if $gcd(a_1, a_2, dots, a_k)=1$.

They are called mutually coprime if $gcd(a_i, a_j)=1$ for $i != j$.
(mutually coprime $=>$ coprime)

=== Corollary 1.15

$gcd(a, b)=1$ iff $a x + b y = 1, exists x,y in ZZ$.

=== Corollary 1.16

For coprime $a,b in ZZ$, we have that

+ If $a|c$ and $b|c$, then $a b|c$
+ If $a|b c$, then $a|c$.

==== Pf

Using corollary 1.15
$cases(
  a x + b y = 1,
  c = a e\, c = b f
),
a c x + b c y = c => a b f c + b a e y = c => a b|c$

(2) is similar.

=== Def 1.17

If $a|c$ and $b|c$, we say that $c$ is a common multiple of $a$ and $b$.
The set of all positive common multiples of $a != 0$ and $b != 0$ is clearly non-empty
and bounded below. So there is a unique least common multiple of $a$ and $b$,
denoted by $l.c.m(a,b).$

=== Theorem 1.18

Let $d=gcd(a, b)$ and $m=l.c.m(a,b)$. Then
$ d dot m = a dot b $

==== Pf

Let $a=d e$ and $b = d f$, then $(a dot b)/d = d e f$ is common multiple of $a,b$.
To show it is the least consider Bezout identity $d = a u + b v$.Supp. $a|c, b|c$,
$ c/(d e f)=(c d)/(a b)=(c(a u + b v))/(a b)=c/a dot u+c/b dot v in ZZ $

*HW:* 1.17, 18, 19, 20, 21, 22, 25

=== Theorem 1.19 (Application to linear Diophantine equation)

Let $a,b$ and $c$ be integers with $a$ and $b$ not both $0$, let $d=gcd(a, b)$.
Then the equation $a x + b y = c$ has an integer solution $x,y$
iff $c$ is a multiple of $d$. In this case, there are infinitely many solutions
given by $x=x_0 + (b n)/d, y = y_0 - (a n)/d, (n in ZZ)$,
where $x_0, y_0$ is any particular solution.

==== Pf

The existence of solution is guaranteed by Corollary 1.13. These solutions
are easy to verify. We remain to show they are the only solutions. If $(x,y)$ is any
solution, then $a/d (x-x_0)=- b/d (y-y_0), b/d | a/d (x-x_0)$ but $b/d, a/d$ are coprime,
then by Corollary 1.16 ……

Steps to solve linear-Diophantine equation $a x + b y = c$

+ use Euclid's algorithm to find $d=gcd(a, b)$
+ If $d|c$, using the method in proof of Bezout's identity to find a
  particular solution $(x_0,y_0)$. Otherwise, no solution.
+ Finally use Theorem 1.19 to find the general solution.
