import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CombinatorialDynamicsSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CombinatorialDynamicsAdmittedObject where
  space : CombinatorialDynamicsSpace
  discreteDynamics : Prop
  periodicOrbitExists : Prop
  orbitModel : Type
  orbitTopology : TopologicalSpace orbitModel
  orbitCardinalityFinite : Prop
  conclusion : orbitCardinalityFinite

structure PeriodicOrbitEndgameState where
  object : CombinatorialDynamicsAdmittedObject

def PeriodicOrbitWitnessClosed (O : CombinatorialDynamicsAdmittedObject) : Prop :=
  O.orbitCardinalityFinite

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse