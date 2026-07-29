import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure GraphMap where
  vertexSet : Type u
  edgeSet : Type v
  map : vertexSet → vertexSet
  forwardInvariantSet : Set vertexSet
  periodicPoints : Set vertexSet
  period : vertexSet → ℕ

structure GraphMapEvidence (M : GraphMap) where
  mapWellDefined : Function.Surjective M.map
  forwardInvariantClosed : M.forwardInvariantSet = Set.range M.map
  periodicPointsNonempty : M.periodicPoints.Nonempty

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse