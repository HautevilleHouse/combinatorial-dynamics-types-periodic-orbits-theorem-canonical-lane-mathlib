import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure InvariantMeasure (X : Type) where
  space : X
  measure : (X → ℝ) → ℝ
  invariance : Prop

def InvariantMeasureClosed (μ : InvariantMeasure ℕ) : Prop :=
  μ.invariance

structure InvariantMeasureFamily where
  measures : List (InvariantMeasure ℕ)
  ergodicity : Prop
  closureCondition : Prop

structure InvariantMeasureEvidence (f : InvariantMeasureFamily) where
  measuresNonempty : f.measures ≠ []
  ergodicityClosed : f.ergodicity
  closureConditionClosed : f.closureCondition

theorem invariant_measure_family_closed (f : InvariantMeasureFamily) (e : InvariantMeasureEvidence f) :
  f.closureCondition := by
  exact e.closureConditionClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
