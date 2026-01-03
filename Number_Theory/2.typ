= Number Theorem 2nd note

=== Def 2.1

An integer $p > 1$ is said to be prime iff. the only positive divisors of
$p$ are $1$ and $p$ itself.

It is easy to see that an integer $n$ is composite iff it is divisible by some
$p<=sqrt(n)$, which leads to an (ineffective) primality test.

=== Rmk 2.2

There are probabilistic polynomial algorithm (about $O(b^2)$ eg. Miller Rabin in 1970s)
and deterministic polynomial algorithm
(about $O(b^6)$ eg. Agrawal-Kayal-Saxena test around 2003)

=== Lemma 2.3

If $p$ is prime and $p$ divides $a_1 dot a_2 dot dots dot a_k$,
then $p$ divides $a_i$ for some $i$.

==== Pf:

(Corollary 1.16) $a|b c => a|c$

=== Theorem 2.4 (FTA)

Each integer $n >= 1$ has a prime-power factorization
$ n = p_1^(e_1)p_2^(e_2) dots p_k^(e_k), $
where $p_i$'s are distinct primes, and $e_i$'s are positive integers.
Moreover, up to permutation of factors, this factorization is unique.

==== Pf

Existence can be easily shown by strong induction. For the uniqueness:
Suppose, to the contrary, there is an integer that has two
$underbracket("prime-power factorization", "p.p.f.")$.
Let $n$ be the least such integer and write
$n=p_1 dot p_2 dot dots dot p_j = q_1 dot q_2 dot dots dot q_k$
($p_i,q_i$ is prime).
We see that $p_i$ divides some $q_i$ be lemma 2.3. WLOG, say $p_1$ divides $q_i => p_1=q_1$.
Then we get $p_2 dots p_j =q_2 dots q_k$, which has two distinct p.p.f.
but is strictly smaller than $n$ (contradiction).

By contrast, there is no deterministic polynomial algorithm for factoring $n$,
but probabilistic polynomial algorithms exist. (J. Pollard 1975)

=== Lemma 2.5

Suppose that $a_1, dots, a_r$ are mutually coprime positive integers.
If $a_1 dots a_r$ is an $m$-th power, then each $a_i$ is an $m$-th power.

=== Pf

$a_1&=p_(11)^(e_(11)) dots p_(1k_1)^(e_(1k_1))\
dots.v & \
a_1&=p_(11)^(e_(11)) dots p_(1k_1)^(e_(1k_1))$

(easy to see that each $e_(i j)$ must be a multiple of $m$)

=== Corollary 2.6

If a positive integer $m$ is not a perfect square, then $sqrt(m)$ is irrational.

==== Pf

Suppose $sqrt(m)=a/b$ is rational $=> m=a^2/b^2$
$cases(
  a=p_1^(e_1) dots p_j^(e_j),
  b=p_1^(f_1) dots b_j^(f_j)
)
(e_i, f_j >=0) => m=p_1^(2e_1-2f_1) dots p_j^(2(e_j-f_j))$ is a perfect square.$arrow.zigzag$

=== Theorem 2.7 (Euclid)

There are infinitely many primes.

==== Pf

Suppose that there are finitely many primes $p_1, dots, p_s$

Consider $m=p_1 dot p_2 dot dots dot p_s+1$ being composite.

Then some $p_i|m => p_i|1$ (contradiction)

An interesting related fact is that #underline[gap] between two primes can be arbitrarily large.
On the other hand, there is the well-known twin-prime conjecture.

=== Theorem 2.8 (Dirichlet)

If $gcd(a, b)=1$, then there are infinitely many primes of the form $a q + b$.

==== Pf for $a=4, b=3$

Suppose there are finitely many primes $p_1, dots, p_s$ of this form.

Consider $m=4 p_1 p_2 dots p_s - 1$ being composite.

There must be a prime factor $q$ of $m$ of the form $4q-1$
(If all prime factors are $4q+1$, then their product must be $4k+1$)

Then $q|m => q|1 arrow.zigzag$


=== Problem 2.9

Pick a pair $(a,b)$ with $a!=2,3,4$. Prove Dirichlet's theorem for your pick.

A major extension came in 2004 when Ben Green and Terence Tao proved that
primes contain arbitrarily long arithmetic progressions.

Let $pi(x)$ denote the number of primes $p<=x$. The following was conjectured
by Gauss and proved by Hadamard in 1896.

=== Theorem 2.10 (Prime Number Theorem)

$ lim_(x -> infinity) pi(x)/(x\/ln(x))=1 $

"Density" $pi(x)/floor(x)=O(1/ln(x))$. Primes occur less frequently when $x$ increases.

Earlier there is Bertrand's postulate (proved by Chebyshev in 1852):
for every $n>1$, there is always at least one prime $p$ such that $n<p<2n$.
This theorem can be restated as: $pi(x)-pi(x/2)>=1$.
(Consider $lim_(x -> infinity) pi(x)/pi(x/2) = 2$)

It seems (by experiment) that $pi(x)$ was always less than the following function:

$ "Li"(x)=integral_2^x (dif t)/ln(t) = "li"(x)-"li"(2) tilde x/ln(x) $

But Littlewood in 1914 prove that there is a "crossover" point.
#footnote[按照讲课顺序，本行晚于下一段写下]

As of 2015, ot was shown that $pi(x) < "Li"(x)$ for $x < 10^19$

As of 2011, it was shown that (the first) crossover
happens before $1.397162 dot 10^316$ by searching zeta zeros.

=== Corollary 2.12 (Equivalent to the Riemann Hypothesis) #footnote[原文没有 2.11]

For all $x >= 2.01$,
$|pi(x)-"Li"(x)|<=sqrt(x) dot ln(x)$

== 2.1 Fermat and Mersenne Primes

=== Lemma 2.13

If $2^m+1$ is prime, then $m=2^n$ for some integral $n>=0$

==== Pf

Suppose $m$ has an odd fact $q, m=2^n dot q$.

Then $2^m+1=(2^(2^n))^q+1$. But $x^q+1$ has a factor $(x+1) => q=0$.

=== Def 2.14

Numbers of the form $F_n=2^(2^n)+1$ are called Fermat numbers,
and those are prime are called Fermat primes.
Numbers of the form $M_p=2_p-1$
are called Mersenne numbers, and those are prime are called Mersenne primes. ($p$ os prime)

=== Lemma 2.15

Distinct Fermat numbers $F_n$ are mutually coprime.

==== Pf

$F_n$ and $F_(n+k)$ are related as $F_(n+k)-1=(F_n-1)^(2^k)$.
We see that $F_n|F_(n+k)-2$ so $gcd(F_n, F_(n+k))|2$,
but all Fermat numbers are odd. So $gcd(F_n, F_(n+k))=1$

=== Rmk 2.16

This provides another proof of Theorem 2.7

In 1801 Gauss showed that a regular $n$-gon can be constructed by rule-and-compass
iff $n=2^e p_1 dots p_r$ where $p_1,dots,p_r$ are distinct Fermat primes.

Later we will prove that distinct Mersenne numbers are mutually coprime.

The current world record is $2^82589933-1$ (51 th)
#footnote[该数据已过时，目前已知最大素数为 $2^136279842-1$]

Prime numbers of the form $p(m,n) = 2^m dot 3^n + 1$ are called Pierpont prime;
Prime numbers of the form $p(m,n) = 2^m dot 3^n - 1$ are called Pierpont prime of second kind.

=== Corollary 2.18 (Fei)#footnote[原文没有 2.17]

There are infinitely many pairs of twin primes of the form $(2^m 3^n-1, 2^m 3^n+1)$.

(But for fixed $n$, there is only finitely twin primes of this form)

*HW:* 2.7, 2.18, 2.19, 2.11, 2.24
