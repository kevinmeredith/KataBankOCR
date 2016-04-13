import Data.Vect
import Data.Fin

-- http://codingdojo.org/cgi-bin/index.pl?KataBankOCR
-- User Story 2

-- assumption: position names:  d9 d8 d7 d6 d5 d4 d3 d2 d1
data AccountNumber : Vect 9 (Fin 10) -> Type where
  AC : (vect : Vect 9 (Fin 10)) -> AccountNumber vect

positions : Vect 9 Nat
positions = [9,8,7,6,5,4,3,2,1]

checksumHelper : (Fin n, Nat) -> Nat
checksumHelper (x, y) = finToNat x * y

zipAccountNumberWithPosition : Vect 9 (Fin 10) -> Vect 9 (Fin 10, Nat)
zipAccountNumberWithPosition nums = zip nums positions

multByPosition : (xs : Vect n (Fin m, Nat)) -> Vect n Nat
multByPosition xs = map checksumHelper xs

validAccountNumbers : Vect 9 (Fin 10)
validAccountNumbers = [0,0,0,0,0,0,0,0,5]

invalidAccountNumbers : Vect 9 (Fin 10)
invalidAccountNumbers = [0,0,0,0,0,0,0,0,6]

build : (numbers : Vect 9 (Fin 10)) -> {auto prf : (sum $ multByPosition $ zipAccountNumberWithPosition numbers) `modNat` 5 = 0} -> AccountNumber numbers
build numbers = AC numbers
