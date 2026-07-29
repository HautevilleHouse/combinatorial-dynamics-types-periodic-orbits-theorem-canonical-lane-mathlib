import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure ShiftSpace where
  alphabet : ℕ
  forbiddenWords : List (List ℕ)
  shiftInvariant : Prop

def ShiftSpaceClosed (s : ShiftSpace) : Prop :=
  s.shiftInvariant

structure SymbolicDynamics where
  shiftSpace : ShiftSpace
  periodicPoints : Prop
  closureCondition : Prop

structure SymbolicDynamicsEvidence (d : SymbolicDynamics) where
  shiftSpaceClosed : ShiftSpaceClosed d.shiftSpace
  periodicPointsClosed : d.periodicPoints
  closureConditionClosed : d.closureCondition

theorem symbolic_dynamics_closed (d : SymbolicDynamics) (e : SymbolicDynamicsEvidence d) :
  d.closureCondition := by
  exact e.closureConditionClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
