import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure DynamicsLinkPackage (X : Type) [TopologicalSpace X] where
  f : X → X
  symbolicEncoding : Type
  subshiftOfFiniteType : Prop
  markovPartition : Prop
  orbitCoding : Prop
  codingComplete : Prop

structure DynamicsLinkEvidence {X : Type} [TopologicalSpace X]
    (D : DynamicsLinkPackage X) where
  subshiftOfFiniteTypeClosed : D.subshiftOfFiniteType
  markovPartitionClosed : D.markovPartition
  orbitCodingClosed : D.orbitCoding
  codingCompleteClosed : D.codingComplete

def DynamicsLinkClosed {X : Type} [TopologicalSpace X]
    (D : DynamicsLinkPackage X) : Prop :=
  D.subshiftOfFiniteType ∧ D.markovPartition ∧ D.orbitCoding ∧ D.codingComplete

theorem dynamics_link_closed_from_evidence
    {X : Type} [TopologicalSpace X] (D : DynamicsLinkPackage X)
    (E : DynamicsLinkEvidence D) : DynamicsLinkClosed D := by
  exact And.intro E.subshiftOfFiniteTypeClosed
    (And.intro E.markovPartitionClosed
      (And.intro E.orbitCodingClosed E.codingCompleteClosed))

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse