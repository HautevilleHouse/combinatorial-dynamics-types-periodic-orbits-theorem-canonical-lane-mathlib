import Mathlib.Dynamics.PeriodicPts

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure ShiftSpaceAdmittedObject where
  sigma : Type
  shiftSpace : ShiftSpace sigma
  periodicPointsSet : PeriodicPointsSet sigma shiftSpace
  classificationPackage : PeriodicOrbitClassificationPackage sigma shiftSpace periodicPointsSet
  classificationEvidence : PeriodicOrbitClassificationEvidence sigma shiftSpace periodicPointsSet classificationPackage
  conclusion : PeriodicOrbitClassificationClosed sigma shiftSpace periodicPointsSet classificationPackage

def PeriodicOrbitsWitnessClosed (O : ShiftSpaceAdmittedObject) : Prop :=
  O.conclusion

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
