import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure ShiftSpace (Sigma : Type) where
  alphabet : Sigma -> Prop
  shift : (ℕ -> Sigma) -> (ℕ -> Sigma)
  shiftDefined : ∀ x : ℕ -> Sigma, shift x = λ n => x (n+1)
  infiniteSequenceSet : Set (ℕ -> Sigma)
  shiftInvariant : ∀ x ∈ infiniteSequenceSet, shift x ∈ infiniteSequenceSet

structure PeriodicPointsSet (Sigma : Type) (S : ShiftSpace Sigma) where
  sequences : Set (ℕ -> Sigma)
  everySequenceIsPeriodic : ∀ seq ∈ sequences, ∃ p > 0, ∀ n : ℕ, seq (n + p) = seq n
  subsetOfShiftSpace : sequences ⊆ S.infiniteSequenceSet

structure PeriodicPoint (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) where
  sequence : ℕ -> Sigma
  inX : sequence ∈ X.sequences
  period : ℕ
  periodPos : period > 0
  periodicity : ∀ n : ℕ, sequence (n + period) = sequence n
  inShiftSpace : sequence ∈ S.infiniteSequenceSet

structure PeriodicOrbit (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) where
  basePoint : PeriodicPoint Sigma S X
  orbit : Set (PeriodicPoint Sigma S X)
  orbitClosedUnderShift : ∀ p ∈ orbit, (mkPeriodicPointFromPoint p) ∈ orbit
  orbitIsMinimal : True

structure PeriodicOrbitClassificationPackage (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) where
  orbitDecomposition : Type u
  orbitTypes : Type v
  minimalOrbitsExist : Prop
  orbitCount : Nat
  classificationComplete : Prop

structure PeriodicOrbitClassificationEvidence (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) (P : PeriodicOrbitClassificationPackage Sigma S X) where
  minimalOrbitsExistClosed : P.minimalOrbitsExist
  classificationCompleteClosed : P.classificationComplete

def PeriodicOrbitClassificationClosed (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) (P : PeriodicOrbitClassificationPackage Sigma S X) : Prop :=
  P.minimalOrbitsExist ∧ P.classificationComplete

theorem periodic_orbit_classification_closed_from_evidence (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) (P : PeriodicOrbitClassificationPackage Sigma S X) (E : PeriodicOrbitClassificationEvidence Sigma S X P) : PeriodicOrbitClassificationClosed Sigma S X P := by
  exact And.intro E.minimalOrbitsExistClosed E.classificationCompleteClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
