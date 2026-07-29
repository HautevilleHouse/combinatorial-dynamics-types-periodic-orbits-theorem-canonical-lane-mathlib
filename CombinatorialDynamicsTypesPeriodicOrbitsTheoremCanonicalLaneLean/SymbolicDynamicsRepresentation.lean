import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure SymbolicDynamicsRepresentationPackage (G : OrbitGraphPackage) where
  shiftSpace : Set (ℕ → G.vertexSet)
  shiftMap : (ℕ → G.vertexSet) → (ℕ → G.vertexSet)
  subshiftOfFiniteType : Prop
  topologicalEntropy : ℝ
  specificationProperty : Prop

structure SymbolicDynamicsRepresentationEvidence {G : OrbitGraphPackage} (S : SymbolicDynamicsRepresentationPackage G) where
  subshiftOfFiniteTypeClosed : S.subshiftOfFiniteType
  specificationPropertyClosed : S.specificationProperty

def SymbolicDynamicsRepresentationClosed {G : OrbitGraphPackage} (S : SymbolicDynamicsRepresentationPackage G) : Prop :=
  S.subshiftOfFiniteType ∧ S.specificationProperty

theorem symbolic_dynamics_representation_closed_from_evidence {G : OrbitGraphPackage} (S : SymbolicDynamicsRepresentationPackage G) (E : SymbolicDynamicsRepresentationEvidence S) : SymbolicDynamicsRepresentationClosed S :=
  And.intro E.subshiftOfFiniteTypeClosed E.specificationPropertyClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
