= Number Theorem 10th note

Now we turn to understand $Q_p$.
The general case will follow from Theorem 9.17.

=== Def 10.1

For an odd prime $p$, the Legendre Symbol of any integer $a$ is 
$(a/p)=cases(
  0\,& "if" p|a,
  1\,& a in Q_p,
  -1\,& a in U_p\\Q_p)$

=== Corollary 10.2

If $p$ is an odd prime, and $g$ is a primitive root $mod p$,
then $((g^i)/p)=(-1)^i$

==== Pf

Lemma 9.14 shows that $((g^i)/p)=1$ iff $i$ is even.

Theorem 10.3

If $p$ is an odd prime, then $((a b)/p) = (a/p)(b/p)$ for all integers $a, b$.

(This is equivalent to say the map $U_p -> plus.minus {-1}$ is a group homomorphism.)

==== Pf

We may assume $a, b in U_p$ otherwise $p$ divides $a$ or $b$ so that both sides are.
We will make use of prim. root of $U_p$: Let $a=g^i$ and $b=g^j$.

Then $((a b)/p) = (-1)^(i+j)=(-1)^i (-1)^j=(a/p)(b/p)$.

=== Warning 10.4

In general $((-a)/p) != -(a/p)$.

Let $p=17$, then $-1 equiv 4^2$ so $((-1)/17)=1$ and thus $(a/17)=((-a)/17)$ for $a in U_17$.

=== Theorem 10.5(8.4)

Let $n$ be an integer possessing a primitive root and assume $gcd(a,n)=1$.
Then the congruence $x^k equiv a mod n$ has a solution 
iff $a^(phi(n)/d)equiv d mod n$, where $d=gcd(k,phi(n))$.
Moreover, if it has a solution, then there are exactly $d$ solutions $mod n$.

=== Theorem 10.6 (Euler)

If $p$ is an odd prime, then for all integers $a$ we have $(a/p)equiv a^((p-1)/2) mod p$.

==== Pf

This is almost a special case of Theorem 8.4 where $k=2, phi(p)=p-1$.

For the full proof, it is enough to establish $a^((p-1)/2) equiv plus.minus 1 mod p$.(this is easy!)

(Determine whether $11 in Q_29$)

=== Corollary 10.7 (Proposition 5.14)

Let $p$ be an odd prime. 
Then $-1 in Q_p$ iff $p equiv 1 mod 4$.

==== Pf

Take $a=-1$ and we see that $((-1)/p)=(-1)^((p-1)/2) mod p$.
So $-1 in Q_p$ iff $(p-1)/2$ is even iff $p equiv 1 mod 4$.

=== Corollary 10.8

There are infinitely many primes $p equiv 1 mod 4$.

==== Pf

Suppose that there are only finitely many primes $p equiv 1 mod 4$,
say $p_1, p_2, dots p_k$. Let $m = (2p_1 dots p_k)^2+1$. 
This odd number $m$ must be divisible by some odd $p$.
Then $(2p_1 dots p_k)^2 equiv -1 mod p$,
that is, $-1 in Q_p$.
By the above Corollary, $p equiv 1 mod 4$, so $p = p_i$ for some $i = 1, dots, k$.

We get a similar contradiction as before...

*HW: 7.20*

*Problem*

If $p = 2^k+1$ is prime, show that every quadratic nonresidue of $p$ is a primitive root of $p$.

== 10.1 Gauss's Lemma

We will prove a more effective way to compute the Legendre symbol $(a/p)$ due to Gauss.

We partition $U_p = ZZ_p \\ {0}$ into two sets:

$ P={1,2,dots,(p-1)/2}, N={-1,-2,dots,-(p-1)/2}=-P $

For each $a in U_p$, we define $a P={a x | x in P}={a,2a,dots,a(p-1)/2}$.

=== Theorem 10.9 (Gauss's Lemma)

If $p$ is an odd prime and $a in U_p$, then $(a/p)=(-1)^mu$,
where $mu=|a P inter N|$

==== Pf

If $x$ and $y$ are distinct element of $P$, 
then $a x != plus.minus a y$ in $U_p$. ($P union.sq N = U_p$)
This means that the elements of $a P$ lies in distinct sets ${plus.minus 1}, {plus.minus 2},dots, {plus.minus (p-1)/2}$.

These $(p-1)/2$ sets must match $(p-1)/2$ elements in $a P$.
So $a P={epsilon_i dot i | i =1, 2, dots, (p-1)/p_2}(epsilon_i=plus.minus 1)$.

Note that $cases(
  epsilon_i = 1& "if" epsilon_i dot i in P,
  epsilon_i = -1& "if" epsilon_i dot i in N,
)$

We multiply all elements in $a P subset U_p$ and get $a^((p-1)/2) dot ((p-1)/2)! =(product_i epsilon_i) ((p-1)/2)!$

Cancelling the unit $((p-1)/2)!$, we see that $a^((p-1)/2) equiv (-1)^mu mod p$.

Invokiry Euler's criterion, we have that
$ (a/p) equiv a^((p-1)/2) equiv (-1)^mu mod p$.

Since both sides are equal $plus.minus 1$ and $p>2$,
they must be strictly equal.

=== Ex 10.10

Let use Gauss's lemma to compute $(11/29)$.
$P={1,2,dots,14}$ and $11P={11,22,14 dot 11}={11,-7,4,-14,-3,8,-10,1,12,-6,5,-13,-2,9}. (11/29)=(-1)^7=-1$

=== Corollary 10.11

For $p$ an odd prime, $(2/p)=(-1)^((p^2-1)/8)$, thus $2 in Q_p$ iff $p plus.minus 1 mod 8$.

==== Pf

Put $a=2$ in Gauss's lemma, and we get $2P={2,4,dots,p-1}$.
We will discuss in two cases.

If $p equiv 1 mod 4$, then $2P={2,4,dots,(p-1)/2}union{(p+3)/2,dots,p-1}$,
we observe that the first $(p-1)/4$ elements in $P$ and the remaining elements in $N$.
Thus $mu = (p-1)/4$. So Gauss's lemma gives

$ (2/p)=(-1)^((p-1)/4)=((-1)^((p-1)/4))^((p+1)/2)=(-1)^((p^2-1)/8),((p+1)/2 "is odd") $

If $p equiv -1 mod 4$, then $2P={2,4,dots,(p-3)/2}union{(p+1)/2,dots,p-1}$.
Similarly, the first $(p-3)/4$ elements in $P$, the rest in $N. => mu = (p+1)/4$.

$ (2/p)=(-1)^((p+1)/4)=((-1)^((p+1)/4))^((p-1)/2)=(-1)^((p^2-1)/8),((p-1)/2 "is odd") $

Finally, $2 in Q_P <=> (2/p)=1 <=> (p^2-1)/8 "is even" <=> 16|(p-1)(p+1) <=> 8|p-1 "or" 8|p+1$.

=== Ex 10.12

By the above Corollary, $2$ is a quadratic nonresidue $mod p$ for

$ p=3,5,11,13,19,29,37,43,53,dots $

_known to be infinite by Dirichlet theorem_

$2$ is a primitive root for $p=3,5,11,13,19,29,37,53,dots$ _"high" precentage_

Despite of this we are still unable to prove Artin's conjecture.

$g$ is a quadratic nonresidue $mod p$ iff $g^((p-1)/2) equiv.not 1$,
but being a primitive root $mod p$ requires $g^((p-1)/q) equiv.not 1, forall q | p-1$.

==== Artin original heunstic:

Assume that for distinct odd primes $q$,
the events "$2^((p-1)/q) equiv 1 (mod p)$" are independent with probability $1/q$,
and the probability of $q|p-1(p equiv 1 mod q)$ is roughly $1/(q-1)$.

Then the probability that none occure (it. 2 is primitive root) is 

$ "Artin constant":= product_q (1-1/(q dot (q-1))) $

=== Euler's observation

$ (p/q)=(q/p) "except for" p equiv q equiv 3 (mod 4) \
[(p/q)=-(q/p) "when" p equiv q equiv 3 mod 4] $

=== Ex

$ (11/29)=(29/11)=(7/11)=-(11/7)=-(4/7)=-(2/7)^2=-1 $

$ (3/p)=cases(
  -(p/3)&=cases(
    1\, & p &equiv -1 &mod 3,
    -1\, & p &equiv 1 &mod 3
  )\,
  &p equiv 3 (mod 4),
  (p/3)&= cases(
    1\, & p &equiv 1 &mod 3,
    -1\, & p &equiv -1 &mod 3
  )\,&p equiv.not 3 (mod 4)
) = cases(
  1\, & p equiv 11\, 1 &mod 12,
  -1\, & p equiv 7\, 5 &mod 12
) $

*HW: 7.10, 7.23, 7.24*

=== 10.13

There are infinitely many primes of the form $8k-1$.
(hint: Consider $N=(4p_1 p_2 dots p_n)^2-2$)

=== 10.14

Prove that the odd prime divisor $p$ of $9^n+1$ are of the form $p equiv 1 mod 4$.

=== 10.15

Show that for a prime $p equiv 1 mod 4$, the sum of the quadratic residue of $p$ is equal $p(p-1)/4$.
