import Data.Vect
import Data.Fin

data Digit = One | Two | Three | Four | Five | Six | Seven | Eight | Nine

hash : Nat -> Digit -> Nat
hash x One   = x * 1
hash x Two   = x * 1
hash x Three = x * 1
hash x One   = x * 1
hash x One   = x * 1
hash x One   = x * 1
hash x One   = x * 1

data AccountNumber : Vect 9 (Fin 10) -> Type where
  AC : (vect : Vect 9 (Fin 10)) -> AccountNumber vect

xs : Vect 9 (Fin 10)
xs = [1,2,3,4,5,6,7,8,9]

sampleAccount : (xs: Vect 9 (Fin 10)) -> AccountNumber xs
sampleAccount xs = AC xs

fin5 : Type
fin5 = Fin 5

data AccountNumberStatus = Valid | Invalid

-- validate : AccountNumber -> AccountNumberStatus
-- validate

-- onlyModByFive : (n : Nat) -> (k : Nat ** 5 * k = n) -> Nat
-- onlyModByFive n k = ?hole
