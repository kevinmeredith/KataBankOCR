import Data.Vect

f : (x : Nat) -> (xs : Vect n Nat) -> {auto prf : (sum $ map (+ x) xs) `modNat` 5 = 0} -> Nat
f x xs = sumModBy5 $ map (+ x) xs

-- credit: http://stackoverflow.com/a/36539124/409976
onlyModBy5 : (n : Nat) -> {auto prf : n `modNat` 5 = 0} -> Nat
onlyModBy5 n = n

-- credit: http://stackoverflow.com/a/36566601/409976
sumModBy5 : (xs : Vect n Nat) -> {auto prf : (sum xs) `modNat` 5 = 0} -> Nat
sumModBy5 xs = onlyModBy5 (sum xs)

fin5 : Type
fin5 = Fin 5


-- sampleAccount : (xs: Vect 9 (Fin 10)) -> AccountNumber xs
-- sampleAccount xs = AC xs
