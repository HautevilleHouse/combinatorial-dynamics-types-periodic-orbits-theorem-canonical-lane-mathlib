import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure TopologicalTransitivity where
  spaceType : Type
  dynamics : spaceType → spaceType
  orbitCovered : Prop
  denseOrbit : Prop
  closureWrap : Prop

def TopologicalTransitivityClosed (t : TopologicalTransitivity) : Prop :=
  t.closureWrap

structure TransitivityEvidence (t : TopologicalTransitivity) where
  orbitCoveredClosed : t.orbitCovered
  denseOrbitClosed : t.denseOrbit
  closureWrapClosed : t.closureWrap

theorem topological_transitivity_closed (t : TopologicalTransitivity) (e : TransitivityEvidence t) :
  TopologicalTransitivityClosed t := by
  exact e.closureWrapClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
