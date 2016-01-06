# mersenne
Simple program which prints all the Mersenne primes to the terminal.

## Mersenne Primes
Mersenne primes are prime numbers which are `1` less than a power of `2` (i.e., prime numbers with the form of `2^n - 1`). Numbers in the form of `2^n - 1` are known as Mersenne numbers. In this program, a function `mersenneNumber` is defined as `mersenneNumber n = 2 ^ n - 1`. Drawing from a list of primes (from `Data.Numbers.Prime`), a list of Mersenne primes, `mersennePrimes`, is produced using the `mersenneNumber` function (where '`n`' is prime) in conjuction with the `isPrime` predicate (also from `Data.Numbers.Prime`). (Note: The list of primes is finite with a maximum value of `57885161`; the largest known mersenneNumber being `2^57885161 - 1`.)

In theory, this should print all 48 known Mersenne primes to the terminal, if you are willing to wait long enough (and memory is not an issue).
