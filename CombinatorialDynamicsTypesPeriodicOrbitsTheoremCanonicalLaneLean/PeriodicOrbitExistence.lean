import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure PeriodicOrbitExistencePackage {M : GraphMap} (S : SharkovskyOrdering) where
  periodThreeProperty : Prop
  orbitExistence : (p : ℕ) → S.ordering 3 p → (∃ (x : M.vertexSet), M.period x = p)

structure PeriodicOrbitExistenceEvidence {M : GraphMap} {S : SharkovskyOrdering} (P : PeriodicOrbitExistencePackage S) where
  periodThreeHolds : P.periodThreeProperty
  orbitExistenceClosed : ∀ (p : ℕ), S.ordering 3 p → (∃ (x : M.vertexSet), M.period x = p)

theorem periodic_orbit_from_sharkovsky {M : GraphMap} {S : SharkovskyOrdering} (P : PeriodicOrbitExistencePackage S) (E : PeriodicOrbitExistenceEvidence P) : PeriodThreeImpliesAllPeriods M := by
  -- Proof would use Sharkovsky's theorem for continuous maps on intervals
  sorry

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse