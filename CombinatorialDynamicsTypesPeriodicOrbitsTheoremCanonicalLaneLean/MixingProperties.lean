import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure MixingProperty where
  strongMixing : Prop
  weakMixing : Prop
  mixingCoefficient : ℝ
  isAdmissible : Prop

def MixingPropertyClosed (m : MixingProperty) : Prop :=
  m.isAdmissible

structure MixingEvidence (m : MixingProperty) where
  strongMixingClosed : m.strongMixing
  weakMixingClosed : m.weakMixing
  isAdmissibleClosed : m.isAdmissible

theorem mixing_property_closed (m : MixingProperty) (e : MixingEvidence m) :
  MixingPropertyClosed m := by
  exact e.isAdmissibleClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
