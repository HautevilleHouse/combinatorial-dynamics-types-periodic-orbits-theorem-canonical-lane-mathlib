import canonicalLaneMathlib.AdmissibleClass
import CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean.PeriodicOrbitTypes

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure DynamicalSystem where
  stateSpace : Type
  dynamics : stateSpace → stateSpace
  entropyLowerBound : Prop
  mixingProperty : Prop

structure DynamicalEvidence (D : DynamicalSystem) where
  entropyLowerBoundClosed : D.entropyLowerBound
  mixingPropertyClosed : D.mixingProperty

def DynamicalClosed (D : DynamicalSystem) : Prop :=
  D.entropyLowerBound ∧ D.mixingProperty

theorem dynamical_closed_from_evidence (D : DynamicalSystem) (E : DynamicalEvidence D) :
    DynamicalClosed D := by
  exact And.intro E.entropyLowerBoundClosed E.mixingPropertyClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
