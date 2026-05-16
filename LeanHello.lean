namespace LeanHello

example (p q : Prop) : p → q → p := by
  intro hp
  intro hq
  exact hp

example (p q : Prop) : p ∧ q → q ∧ p := by
  intro h
  constructor
  · exact h.right
  · exact h.left

example (n : Nat) : n + 0 = n := by
  induction n with
  | zero =>
      rfl
  | succ n ih =>
      simp

end LeanHello
