import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

def ConstrainedPeriodicOrbitsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_periodic_orbits_endgame (A : AdmissibleClass) :
    ConstrainedPeriodicOrbitsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

theorem classification_closed_from_evidence (Sigma : Type) (S : ShiftSpace Sigma) (X : PeriodicPointsSet Sigma S) (P : PeriodicOrbitClassificationPackage Sigma S X) (E : PeriodicOrbitClassificationEvidence Sigma S X P) : PeriodicOrbitClassificationClosed Sigma S X P := by
  exact And.intro E.minimalOrbitsExistClosed E.classificationCompleteClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
