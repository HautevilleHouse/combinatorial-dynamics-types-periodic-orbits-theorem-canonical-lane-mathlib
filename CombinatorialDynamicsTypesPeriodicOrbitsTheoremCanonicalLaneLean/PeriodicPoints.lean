import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure PeriodicPoint (Sigma : Type) (S : ShiftSpace Sigma) where
  sequence : ℕ -> Sigma
  period : ℕ
  periodPos : period > 0
  isPeriodic : ∀ n : ℕ, sequence (n + period) = sequence n
  inShiftSpace : sequence ∈ S.infiniteSequenceSet

def PeriodicPointsSet {Sigma : Type} (S : ShiftSpace Sigma) : Set (ℕ -> Sigma) :=
  {x : ℕ -> Sigma | ∃ (p : ℕ), p > 0 ∧ ∀ n : ℕ, x (n + p) = x n ∧ x ∈ S.infiniteSequenceSet}

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
