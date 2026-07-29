import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure PeriodicOrbitEnumerationPackage (G : OrbitGraphPackage) where
  periodicOrbitSet : Type w
  orbitLength : periodicOrbitSet → ℕ
  primitiveOrbits : Set periodicOrbitSet
  countAllPeriodicOrbits : ℕ
  countAllPrimitiveOrbits : ℕ

structure PeriodicOrbitEnumerationEvidence {G : OrbitGraphPackage} (E : PeriodicOrbitEnumerationPackage G) where
  countAllPeriodicOrbitsClosed : E.countAllPeriodicOrbits = Finset.card (Set.univ : Set E.periodicOrbitSet)
  countAllPrimitiveOrbitsClosed : E.countAllPrimitiveOrbits = Finset.card (Set.univ : Set E.primitiveOrbits)

def PeriodicOrbitEnumerationClosed {G : OrbitGraphPackage} (E : PeriodicOrbitEnumerationPackage G) : Prop :=
  E.countAllPeriodicOrbits = Finset.card (Set.univ : Set E.periodicOrbitSet) ∧
  E.countAllPrimitiveOrbits = Finset.card (Set.univ : Set E.primitiveOrbits)

theorem periodic_orbit_enumeration_closed_from_evidence {G : OrbitGraphPackage} (E : PeriodicOrbitEnumerationPackage G) (Ev : PeriodicOrbitEnumerationEvidence E) : PeriodicOrbitEnumerationClosed E :=
  And.intro Ev.countAllPeriodicOrbitsClosed Ev.countAllPrimitiveOrbitsClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
