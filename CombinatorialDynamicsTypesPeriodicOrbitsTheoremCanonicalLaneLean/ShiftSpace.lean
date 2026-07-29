import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure ShiftSpace (Sigma : Type) where
  alphabet : Sigma -> Prop
  shift : (ℕ -> Sigma) -> (ℕ -> Sigma)
  shiftDefined : ∀ x : ℕ -> Sigma, shift x = λ n => x (n+1)
  infiniteSequenceSet : Set (ℕ -> Sigma)
  shiftInvariant : ∀ x ∈ infiniteSequenceSet, shift x ∈ infiniteSequenceSet

def ShiftClosed {Sigma : Type} (S : ShiftSpace Sigma) : Prop :=
  S.shiftInvariant

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
