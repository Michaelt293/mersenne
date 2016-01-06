module Main where

import Data.Numbers.Primes (isPrime)
import Control.Monad (guard)

f :: Integer -> Integer
f x = 2 ^ x - 1

mersennePrimes :: [Integer]
mersennePrimes = do
    x <- [1..]
    let n = f x
    guard $ isPrime n
    return n

main :: IO ()
main = do
    putStrLn "Printing Mersenne primes numbers!"
    mapM_ print mersennePrimes
