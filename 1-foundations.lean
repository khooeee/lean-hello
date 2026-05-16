-- My first Lean file
-- #eval "Hello, Lean 4!"

-- Check some types
-- #check Nat
-- #check String -> Bool

-- A simple definition (we'll cover this next)
-- def greeting := "Welcome to Lean!"
-- #check greeting
-- #eval greeting

-- def maybeHello (b : Bool) : String :=
--   if b then "Hello" else "Goodbye"
-- #eval maybeHello True
-- #eval maybeHello False

-- 1.1 https://lean4.dev/language/foundations/environment

-- Bounded Naturals (Fin n)
-- #eval (9 : Fin 10) -- must be less than 10

-- def arr : Array String := #["a", "b", "c"]
-- def safeGet (arr : Array α) (i : Fin arr.size) : α := arr[i]

-- #eval safeGet arr (Fin.mk 2 (by decide))
-- Fin.mk type is (i : Nat) (h : i < n) : Fin n
-- h is proof that i < n

-- Fin.mk 2 (by decide) means: “the natural number 2, together with evidence that 2 < n.”
-- by decide runs a small proof script that:
--   Sees the goal is something like 2 < 3
--   Uses a decidable instance (Lean can compute true/false for concrete Nat comparisons)
--   Closes the goal when it’s obviously true

-- 1.2 https://lean4.dev/language/foundations/primitives

-- TODO

-- 1.3 https://lean4.dev/language/foundations/functions
