import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure CycleExpansionPackage where
  expansionCoefficients : ℕ → ℚ
  convergenceRadius : ℝ
  rationalFunction : ℕ → ℚ
  closedFormComputed : Prop

structure CycleExpansionEvidence (C : CycleExpansionPackage) where
  closedFormComputedClosed : C.closedFormComputed

def CycleExpansionClosed (C : CycleExpansionPackage) : Prop :=
  C.closedFormComputed

theorem cycle_expansion_closed_from_evidence (C : CycleExpansionPackage) (E : CycleExpansionEvidence C) : CycleExpansionClosed C :=
  E.closedFormComputedClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
