module Main where

import Data.Numbers.Primes (isPrime, primes)
import Control.Monad (guard)

mersenneNumber :: Integer -> Integer
mersenneNumber n = 2 ^ n - 1

mersennePrimes :: [Integer]
mersennePrimes = do
    let selectedPrimes = [ x | x <- primes, x <= 57885161 ]
    x <- selectedPrimes
    let n = mersenneNumber x
    guard $ isPrime n
    return n

main :: IO ()
main = do
    putStrLn "Printing Mersenne primes!"
    mapM_ print mersennePrimes
