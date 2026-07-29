import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure PeriodicOrbit where
  period : Nat
  orbitType : String
  admissible : Prop

structure PeriodicOrbitSuite where
  orbit : PeriodicOrbit
  classificationComplete : Prop
  stabilityCondition : Prop

def PeriodicOrbitSuiteClosed (S : PeriodicOrbitSuite) : Prop :=
  S.classificationComplete ∧ S.stabilityCondition

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
