= Number Theorem 11th note

=== Theorem 11.1 (Quadratic reciprocity)

If $p$ and $q$ are distinct odd primes, then

$ (q/p)=(p/q) $

except when $p equiv q equiv 3 mod 4$, in which case

$ (q/p)=-(p/q) $

or equivalently

$ (q/p)(p/q)=(-1)^(((p-1)(q-1))/4) $

==== Pf.

Let $P={1,2,dots,(p-1)/2} subset U_p$ and $N=(-1) dot P$ as before,
and let $Q = {1,2,dots,(q-1)/2} subset U_q$.
By Gauss's lemma, $(q/p)=(-1)^mu$, where $mu=|q P sect N|$
is the number of elements $x in P$ s.t. $q x equiv n (mod p)$.

This congruence is equivalent to $q x-p y in N$ for some $y in ZZ$,
that is #super[(1)]$- p/2 < q x - p y < 0$ for some $y in ZZ$.#sub[控制]
Given any $x in P$, it is clear that (1) holds for at most one $y in ZZ$.
If such $y$ exists, then $0 < (q x)/p < y < (q x)/p+1/2$.
But $x <= (p-1)/2$ so $y < q/p (p-1)/2+1/2<(q+1)/2$.

Thus $y$ is in feat in $Q$!
Therefore, $mu$ is the number of pairs $(x,y) in P times Q$ such that (1) holds.

Interchanging the roles of $p$ and $q$, we also have $(p/q)=(-1)^nu$,
where $nu$ is the number of pairs $(x,y) in P times Q$ such that 

$ \ ^((2)) 0 < q x - p y < q/2 $

It follows that$(q/p)(p/q)=(-1)^(mu+nu)$, 
where $mu+nu$ is the number of pairs $(x,y) in P times Q$ such that (1) or (2) holds.

But there are no pairs $(x,y) in P times Q$ satisfying $q x - p y = 0$ as $gcd(p,q) = 1$.
So the condition can be simplified to $-p/2 < q x - p y < q/2$.#super[(3)]

The strip $S$ defined by (3) splits the rectangle $R=P times Q$ into $3$ parts.

#image("./b.png")

So it suffice to show that $A$ and $B$ have the same number of integer points.
But $A$ and $B$ can be easily identified via the half turn.

=== Ex 11.3

If $p equiv 1 mod 4$.

$ (3/p)=(p/3)=cases(
  1\, &p equiv 1 mod 3\, &"that is" p equiv 1 mod 12,
  -1\, &p equiv 2 mod 3\, &"that is" p equiv 5 mod 12.
) $

If $p equiv 3 mod 4$.

$ (3/p)=(-p/3)=cases(
  -1\, &p equiv 1 mod 3\, &"that is" p equiv 7 mod 12,
  1\, &p equiv 2 mod 3\, &"that is" p equiv 11 mod 12.
) $

In summary, we see that $3 in Q_p$ iff $p=2$ or $p equiv plus.minus 1 mod 12$.

=== Corollary 11.4 (Pepin's test for primality of $F_n=2^(2^n)+1$)

If $n>=1$, then the Fermat number $F_m$ is prime iff

$ 3^((F_n-1)/2) equiv -1 mod F_n $

==== Pf.

===== (=>)

It is easily seen that $F_n equiv 5 mod 12 vec(2 mod 3, 1 mod 4)$.

By Ex 11.3, $3 in.not Q_p (p=F_n)$. Then Euler's criterion gives

$ 3^((p-1)/2) equiv -1 mod p $.

===== (<=)

For the converse, suppose that $3^((F_n-1)/2) equiv -1 mod F_n$,
then squaring $3^(F_n-1) equiv 1 mod F_n$ and thus $3^(F_n-1) equiv 1 mod p$ for $p| F_n$.

As an element of $U_p$, $3$ has order $m|F_n-1=2^(2^n)$,
so $m=2^i$ for some $i<=2^n$.
Now $3^(2^(2^(n-1)))=3^((F_n-1)/2)equiv -1 equiv.not 1 mod p$,
so $i = 2^n$ and $m = 2^(2^n)=F_n-1$.
However, $m <= phi(p)=p-1$,
so $F_n <= p$ and hence $F_n=p$ is prime.

*HW:* Are $11$ and $29 in Q_1129$

*HW:* 7.12

=== Def 11.5

The Jacobi symbol $(a/n)$ is a natural generalization of the Legendre symbol defined for any positive odd integer $n$:

$ (a/n)=(a/(p_1))^(e_1) dots (a/(p_k))^(e_k), "where" n=p_1^(e_1) dots p_k^(e_k) "is the p.p.f of" n $

*HW*

Show that if $(a/n)=-1$ then $a in.not Q_n$.(the converse is clearly wrong)

Show that for $m$ and $n$ odd positive coprime integers, we have the law of quadratic reciprocity.

$ (m/n) dot (n/m) = (-1)^(((m-1)(n-1))/4) $

$ H_1, H_2 "子群" subset G,
cases(
  angle.l H_1 union H_2 angle.r = G,
  H_1 sect H_2 = {e}
),
G tilde.equiv.rev H_1 times H_2 $

=== Ex 11.6

Let $n=100=2^2 dot 5^2$. Then $a in Q_100$ iff $cases(a in Q_5 = {1,4}, a in Q_4("ie." a equiv 1 mod 4))$

We immediately get from CRT that

$ Q_100={1,21,41,61,81,9,29,49,69,89}. $

Any of them has $4$ square roots.
To find square roots of say $29$,
we first find its square roots $mod 4$ and $mod 25$ respectively.

There are $plus.minus 1 (mod 4)$ and $plus.minus 2 (mod 25)$,
so by CRT again square roots $mod 100$ are ${23,27,73,77}$.
We thus found all numbers $b$ s.t. the last digits of $b^2$ are $29$.

*HW:* List all elements in $Q_108$ and find the square roots of $37 mod 108$

=== Ex 11.7

Recall from Ex 3.13 that we claimed for each $n in NN$ there is a solution for $f(x)=(x^2-13)(x^2-17)(x^2-221) equiv 0 mod n$.

By CRT it suffices to show that the solution exists for each $n=p^e$.
This is clearly equivalent to that at least one of $13, 17$ and $221=13 dot 17$ us a quadratic residue $mod p$.
By Theorem 10.3, $(221/p)=(13/p)(17/p), (p != 2, 13, 17)$
Then at least one of $13,17$ or $221$ must be in $Q_p$.

Finally we need to consider the case when $p=2,13,17$.
But it is easy to find a solution in these cases.

*Problem*

An $n times n$ matrix $H$ with all entries $plus.minus 1$ and satisfies $H dot H^T=n dot I_n$ is called a Hadamard matrix of order $n$.

It is an easy observation that $H$ is a Hadamard matrix of order $n$, then $n=1,2$ or $n equiv 0 mod 4$.

Conjecturally there exists a Hadamard matrix of order $n$ whenever $4|n$.
(as of today the least $n$ for which no $H$ is construeted is $668$)

- $n=q+1, q equiv 3 mod 4$
- $n=2(q+1) q equiv 1 mod 4$

+ $sum_(a in ZZ_q) (a/q)=0$
+ if $b in U_q$, then $sum_a in ZZ_q (a/q)((b+a)/q)=-1$ 

=== Def 12.1 #footnote[原文序号如此]

An arithmetic function is a function $f(n)$ defined for all $n in NN$, it is usually complex valued.
An arithmetic function $f$ is called multiplicative if $f(m n)=f(m) dot f(n)$ whenever $m$ and $n$ are coprime.

=== Rmk 12.2

Any multiplicative arith fun. is completely determined by its value on prime powers.

=== Ex 12.3

Completely multiplicative:

+ Identity $"Id" -> "Id"_k$ (where  $k=0$ is constently 1)
+ unit function $epsilon(n)=cases(
  1\, &"if" n=1,
  0\, &"otherwise"
)$
+ Legendre (Jacobi) symbol, (or more generally Dirichlet character)

just multiplicative:

+ $gcd(n,k)$($k$ fixed)
+ Euler's $phi$
+ divisor function $sigma_k (sigma_k (n)=sum_(d|n) d^k)$
+ $|Q_n|$ the number of quadratic residues.

=== Rmk 12.4

An arithmetic function $f$ is called additive if $f(m n)=f(m)+f(n)$,
whenever $m$ and $n$ are coprime. Through exponentials additive function will be multiplicative.

The number of prime divisors $Omega(n)$(with multiplicity), and $omega(n)$( without multiplicity) are additive.

=== Ex 12.5 (Liouville's $lambda$)

$lambda(n)=(-1)^(Omega(n))$. In general, we define $lambda_k (n)=k^(Omega(n))$.

=== Ex 12.6 (Dedekond's $Psi$)

We defined a multiplicative function $psi$ by $psi(p^e)=(p+1) dot p^(e-1)$.
Then $psi(n)=n dot product_(p|n)(1+1/p)$.

=== Ex 12.7 (Ramanujan's sum)

$C_k (q)$ is the sum of the $k$-th powers of the primitive $q$-th roots of unity.

$ C_k(q)=sum_(1<=a<=q, gcd(a,q)=1) e^(2 pi i a/q k) $

(is multiplicative)

=== Prop 12.8

The divisor function $sigma=sigma_1$ is multiplicative.
Will give a short proof next lecture.

=== Corollary 12.9

If $n$ has a p.p.f. $n=p_1^(e_1) dots p_k^(e_k)$,
then $sigma_0 (n)=product_(i=1)^k (e_i+1)$ and $sigma_1 (n)= product_(i=1)^k ((p_i^(e_i)+1 )/(p_i - 1))$
