import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure OrbitGraphPackage where
  vertexSet : Type u
  edgeSet : Type v
  sourceMap : edgeSet → vertexSet
  targetMap : edgeSet → vertexSet
  finiteVertices : Prop
  finiteEdges : Prop

structure OrbitGraphEvidence (G : OrbitGraphPackage) where
  finiteVerticesClosed : G.finiteVertices
  finiteEdgesClosed : G.finiteEdges

def OrbitGraphClosed (G : OrbitGraphPackage) : Prop :=
  G.finiteVertices ∧ G.finiteEdges

theorem orbit_graph_closed_from_evidence (G : OrbitGraphPackage) (E : OrbitGraphEvidence G) : OrbitGraphClosed G :=
  And.intro E.finiteVerticesClosed E.finiteEdgesClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
