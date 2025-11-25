# Number Theorem 10th note

Now we turn to understand $Q_{p}$. The general case will follow from
[Theorem 9.17](../9/#theorem-917).

### Def 10.1

For an odd prime $p$, the Legendre Symbol of any integer $a$ is

$$
\left( \frac{a}{p} \right) = \begin{cases}
0, & \text{ if }p|a \\
1, & a \in Q_{p} \\
 - 1, & a \in U_{p}\backslash Q_{p}
\end{cases}
$$

### Corollary 10.2

If $p$ is an odd prime, and $g$ is a primitive root
$\operatorname{mod}p$, then
$\left( \frac{g^{i}}{p} \right){= ( - 1)}^{i}$

#### Pf

[Lemma 9.14](../9/#lemma-914) shows that $\left( \frac{g^{i}}{p} \right) = 1$ iff $i$ is
even.

Theorem 10.3

If $p$ is an odd prime, then
$\left( \frac{ab}{p} \right) = \left( \frac{a}{p} \right)\left( \frac{b}{p} \right)$
for all integers $a,b$.

(This is equivalent to say the map
$U_{p} \rightarrow \pm \left\{ - 1 \right\}$ is a group homomorphism.)

#### Pf

We may assume $a,b \in U_{p}$ otherwise $p$ divides $a$ or $b$ so that
both sides are. We will make use of prim. root of $U_{p}$: Let
$a = g^{i}$ and $b = g^{j}$.

Then
$\left( \frac{ab}{p} \right) = ( - 1)^{i + j}{= ( - 1)}^{i}( - 1)^{j} = \left( \frac{a}{p} \right)\left( \frac{b}{p} \right)$.

### Warning 10.4

In general
$\left( \frac{- a}{p} \right) \neq - \left( \frac{a}{p} \right)$.

Let $p = 17$, then $- 1 \equiv 4^{2}$ so
$\left( \frac{- 1}{17} \right) = 1$ and thus
$\left( \frac{a}{17} \right) = \left( \frac{- a}{17} \right)$ for
$a \in U_{17}$.

### Theorem 10.5(8.4)

Let $n$ be an integer possessing a primitive root and assume
$\gcd(a,n) = 1$. Then the congruence $x^{k} \equiv a\operatorname{mod}n$
has a solution iff
$a^{\frac{\varphi(n)}{d}} \equiv d\operatorname{mod}n$, where
$d = \gcd(k,\varphi(n))$. Moreover, if it has a solution, then there are
exactly $d$ solutions $\operatorname{mod}n$.

### Theorem 10.6 (Euler)

If $p$ is an odd prime, then for all integers $a$ we have
$\left( \frac{a}{p} \right) \equiv a^{\frac{p - 1}{2}}\operatorname{mod}p$.

#### Pf

This is almost a special case of Theorem 8.4 where
$k = 2,\varphi(p) = p - 1$.

For the full proof, it is enough to establish
$a^{\frac{p - 1}{2}} \equiv \pm 1\operatorname{mod}p$.(this is easy!)

(Determine whether $11 \in Q_{29}$)

### Corollary 10.7 (Proposition 5.14)

Let $p$ be an odd prime. Then $- 1 \in Q_{p}$ iff
$p \equiv 1\operatorname{mod}4$.

#### Pf

Take $a = - 1$ and we see that
$\left( \frac{- 1}{p} \right){= ( - 1)}^{\frac{p - 1}{2}}\operatorname{mod}p$.
So $- 1 \in Q_{p}$ iff $\frac{p - 1}{2}$ is even iff
$p \equiv 1\operatorname{mod}4$.

### Corollary 10.8

There are infinitely many primes $p \equiv 1\operatorname{mod}4$.

#### Pf

Suppose that there are only finitely many primes
$p \equiv 1\operatorname{mod}4$, say $p_{1},p_{2},\ldots p_{k}$. Let
$m = \left( 2p_{1}\ldots p_{k} \right)^{2} + 1$. This odd number $m$
must be divisible by some odd $p$. Then
$\left( 2p_{1}\ldots p_{k} \right)^{2} \equiv - 1\operatorname{mod}p$,
that is, $- 1 \in Q_{p}$. By the above Corollary,
$p \equiv 1\operatorname{mod}4$, so $p = p_{i}$ for some
$i = 1,\ldots,k$.

We get a similar contradiction as before...

**HW: 7.20**

**Problem**

If $p = 2^{k} + 1$ is prime, show that every quadratic nonresidue of $p$
is a primitive root of $p$.

## 10.1 Gauss's Lemma

We will prove a more effective way to compute the Legendre symbol
$\left( \frac{a}{p} \right)$ due to Gauss.

We partition $U_{p} = {\mathbb{Z}}_{p}\backslash\left\{ 0 \right\}$ into
two sets:

$$
P = \left\{ 1,2,\ldots\frac{,(p - 1)}{2} \right\},N = \left\{ - 1, - 2,\ldots,\frac{- (p - 1)}{2} \right\} = - P
$$

For each $a \in U_{p}$, we define
$aP = \left\{ ax~|~x \in P \right\} = \left\{ a,2a,\ldots,\frac{a(p - 1)}{2} \right\}$.

### Theorem 10.9 (Gauss's Lemma)

If $p$ is an odd prime and $a \in U_{p}$, then
$\left( \frac{a}{p} \right){= ( - 1)}^{\mu}$, where $\mu = |aP \cap N|$

#### Pf

If $x$ and $y$ are distinct element of $P$, then $ax \neq \pm ay$ in
$U_{p}$. ($P \sqcup N = U_{p}$) This means that the elements of $aP$
lies in distinct sets
$\left\{ \pm 1 \right\},\left\{ \pm 2 \right\},\ldots,\left\{ \pm \frac{p - 1}{2} \right\}$.

These $\frac{p - 1}{2}$ sets must match $\frac{p - 1}{2}$ elements in
$aP$. So
$aP = \left\{ \varepsilon_{i} \cdot i~|~i = 1,2,\ldots,\frac{p - 1}{p_{2}} \right\}\left( \varepsilon_{i} = \pm 1 \right)$.

Note that $\begin{cases}
\varepsilon_{i} = 1 & \text{ if }\varepsilon_{i} \cdot i \in P \\
\varepsilon_{i} = - 1 & \text{ if }\varepsilon_{i} \cdot i \in N
\end{cases}$

We multiply all elements in $aP \subset U_{p}$ and get
$a^{\frac{p - 1}{2}} \cdot \left( \frac{p - 1}{2} \right)! = \left( \prod_{i}\varepsilon_{i} \right)\left( \frac{p - 1}{2} \right)!$

Cancelling the unit $\left( \frac{p - 1}{2} \right)!$, we see that
$a^{\frac{p - 1}{2}} \equiv ( - 1)^{\mu}\operatorname{mod}p$.

Invokiry Euler's criterion, we have that

$$
\left( \frac{a}{p} \right) \equiv a^{\frac{p - 1}{2}} \equiv ( - 1)^{\mu}\operatorname{mod}p
$$

Since both sides are equal $\pm 1$ and $p > 2$, they must be strictly
equal.

### Ex 10.10

Let use Gauss's lemma to compute $\left( \frac{11}{29} \right)$.
$P = \left\{ 1,2,\ldots,14 \right\}$ and
$11P = \left\{ 11,22,14 \cdot 11 \right\} = \left\{ 11, - 7,4, - 14, - 3,8, - 10,1,12, - 6,5, - 13, - 2,9 \right\}.$
$\left( \frac{11}{29} \right){= ( - 1)}^{7} = - 1$

### Corollary 10.11

For $p$ an odd prime,
$\left( \frac{2}{p} \right){= ( - 1)}^{\frac{p^{2} - 1}{8}}$, thus
$2 \in Q_{p}$ iff $p \pm 1\operatorname{mod}8$.

#### Pf

Put $a = 2$ in Gauss's lemma, and we get
$2P = \left\{ 2,4,\ldots,p - 1 \right\}$. We will discuss in two cases.

If $p \equiv 1\operatorname{mod}4$, then
$2P = \left\{ 2,4,\ldots\frac{,(p - 1)}{2} \right\} \cup \left\{ \frac{p + 3}{2},\ldots,p - 1 \right\}$,
we observe that the first $\frac{p - 1}{4}$ elements in $P$ and the
remaining elements in $N$. Thus $\mu = \frac{p - 1}{4}$. So Gauss's
lemma gives

$$\left( \frac{2}{p} \right){= ( - 1)}^{\frac{p - 1}{4}}{= \left( ( - 1)^{\frac{p - 1}{4}} \right)}^{\frac{p + 1}{2}}{= ( - 1)}^{\frac{p^{2} - 1}{8}},\left( \frac{p + 1}{2}\text{ is odd} \right)$$

If $p \equiv - 1\operatorname{mod}4$, then
$2P = \left\{ 2,4,\ldots\frac{,(p - 3)}{2} \right\} \cup \left\{ \frac{p + 1}{2},\ldots,p - 1 \right\}$.
Similarly, the first $\frac{p - 3}{4}$ elements in $P$, the rest in
$N. \Rightarrow \mu = \frac{p + 1}{4}$.

$$\left( \frac{2}{p} \right){= ( - 1)}^{\frac{p + 1}{4}}{= \left( ( - 1)^{\frac{p + 1}{4}} \right)}^{\frac{p - 1}{2}}{= ( - 1)}^{\frac{p^{2} - 1}{8}},\left( \frac{p - 1}{2}\text{ is odd} \right)$$

Finally,
$2 \in Q_{P} \Leftrightarrow \left( \frac{2}{p} \right) = 1 \Leftrightarrow \frac{p^{2} - 1}{8}\text{ is even } \Leftrightarrow 16|(p - 1)(p + 1) \Leftrightarrow 8|p - 1\text{ or }8|p + 1$.

### Ex 10.12

By the above Corollary, $2$ is a quadratic nonresidue
$\operatorname{mod}p$ for

$$p = 3,5,11,13,19,29,37,43,53,\ldots$$

*known to be infinite by Dirichlet theorem*

$2$ is a primitive root for $p = 3,5,11,13,19,29,37,53,\ldots$ *"high"
precentage*

Despite of this we are still unable to prove Artin's conjecture.

$g$ is a quadratic nonresidue $\operatorname{mod}p$ iff
$g^{\frac{p - 1}{2}} ≢ 1$, but being a primitive root
$\operatorname{mod}p$ requires
$g^{\frac{p - 1}{q}} ≢ 1,\forall q~|~p - 1$.

#### Artin original heunstic

Assume that for distinct odd primes $q$, the events
"$2^{\frac{p - 1}{q}} \equiv 1\left( \operatorname{mod}p \right)$" are
independent with probability $\frac{1}{q}$, and the probability of
$q|p - 1\left( p \equiv 1\operatorname{mod}q \right)$ is roughly
$\frac{1}{q - 1}$.

Then the probability that none occure (it. 2 is primitive root) is

$$\text{ Artin constant} ≔ \prod_{q}\left( 1 - \frac{1}{q \cdot (q - 1)} \right)$$

### Euler's observation

$$\begin{array}{r}
\left( \frac{p}{q} \right) = \left( \frac{q}{p} \right)\text{ except for }p \equiv q \equiv 3\left( \operatorname{mod}4 \right) \\
\left\lbrack \left( \frac{p}{q} \right) = - \left( \frac{q}{p} \right)\text{ when }p \equiv q \equiv 3\operatorname{mod}4 \right\rbrack
\end{array}$$

### Ex

$$\left( \frac{11}{29} \right) = \left( \frac{29}{11} \right) = \left( \frac{7}{11} \right) = - \left( \frac{11}{7} \right) = - \left( \frac{4}{7} \right) = {- \left( \frac{2}{7} \right)}^{2} = - 1$$

$$\left( \frac{3}{p} \right) = \begin{cases}
 - \left( \frac{p}{3} \right) & \begin{aligned}
 = \begin{cases}
1, & \begin{array}{rlr}
p & \equiv - 1 & \operatorname{mod}3
\end{array} \\
 - 1, & \begin{array}{rlr}
p & \equiv 1 & \operatorname{mod}3
\end{array}
\end{cases}, & p \equiv 3\left( \operatorname{mod}4 \right)
\end{aligned} \\
\left( \frac{p}{3} \right) & \begin{aligned}
 = \begin{cases}
1, & \begin{array}{rlr}
p & \equiv 1 & \operatorname{mod}3
\end{array} \\
 - 1, & \begin{array}{rlr}
p & \equiv - 1 & \operatorname{mod}3
\end{array}
\end{cases}, & p ≢ 3\left( \operatorname{mod}4 \right)
\end{aligned}
\end{cases} = \begin{cases}
1, & \begin{aligned}
p \equiv 11,1 & \operatorname{mod}12
\end{aligned} \\
 - 1, & \begin{aligned}
p \equiv 7,5 & \operatorname{mod}12
\end{aligned}
\end{cases}$$

**HW: 7.10, 7.23, 7.24**

### 10.13

There are infinitely many primes of the form $8k - 1$. (hint: Consider
$N{= \left( 4p_{1}p_{2}\ldots p_{n} \right)}^{2} - 2$)

### 10.14

Prove that the odd prime divisor $p$ of $9^{n} + 1$ are of the form
$p \equiv 1\operatorname{mod}4$.

### 10.15

Show that for a prime $p \equiv 1\operatorname{mod}4$, the sum of the
quadratic residue of $p$ is equal $\frac{p(p - 1)}{4}$.
