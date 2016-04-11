import Data.Vect
import Data.Fin

-- http://codingdojo.org/cgi-bin/index.pl?KataBankOCR
-- User Story 2

data Position = One | Two | Three | Four | Five | Six | Seven | Eight | Nine

data AccountNumberStatus = Valid | Invalid

-- assumption: position names:  d9 d8 d7 d6 d5 d4 d3 d2 d1
data AccountNumber : Vect 9 (Fin 10) -> Type where
  AC : (vect : Vect 9 (Fin 10)) -> AccountNumber vect

positions : Vect 9 Nat
positions = [9,8,7,6,5,4,3,2,1]

sampleAccount : (xs: Vect 9 (Fin 10)) -> AccountNumber xs
sampleAccount xs = AC xs

--credit: http://stackoverflow.com/a/36534237/409976
onlyModBy5 : (n : Nat) -> (n `modNat` 5 = 0) -> Nat
onlyModBy5 n prf = n

-- onlyModBy5Helper : (n : Nat ** n `modNat` 5 = 0) -> Nat
-- onlyModBy5Helper pair = fst pair

checksumHelper : (Fin n, Nat) -> Nat
checksumHelper (x, y) = finToNat x * y

-- WORK IN PROGRESS!
-- checksum : AccountNumber acctNums -> Nat
-- checksum (AC acctNums) = let numsWithPositions     = zip acctNums positions
--                              numsMultWithPositions = map checksumHelper numsWithPositions
--                          in onlyModBy5 $ sum $ numsMultWithPositions

fin5 : Type
fin5 = Fin 5

-- http://stackoverflow.com/questions/36465268/understanding-nat-5-k-n-signature/36465477?noredirect=1#comment60588893_36465477
-- onlyModByFive : (n : Nat) -> (k : Nat ** 5 * k = n) -> Nat
-- onlyModByFive n k = 100

-- onlyModByN : (k : Nat) -> (n : Nat) -> (n ** k `mod` n = 0) -> n
-- onlyModByN k n = (n ** Refl)



-- onlyModBy5 : (n : Nat) -> Nat
-- onlyModBy5 n = onlyModBy5Helper (n ** Refl)
--
onlyModBy5Short : (n : Nat) -> Nat
onlyModBy5Short n = onlyModBy5 n Refl

-- evenlyDivBy5 : (n : Nat) -> n
-- evenlyDivBy5 n = n ** (n % 5 == 0)
