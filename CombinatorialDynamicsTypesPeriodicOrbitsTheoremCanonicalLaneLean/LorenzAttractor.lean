import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure LorenzAttractorPackage where
  differentialEquation : DifferentialEquation ℝ³
  chaoticInvariantSet : Set ℝ³
  periodicOrbits : Set (ℝ → ℝ³)
  symbolicDynamics : SymbolicDynamics

structure LorenzEvidence (L : LorenzAttractorPackage) where
  attractorExists : L.chaoticInvariantSet.Nonempty
  periodicOrbitsDense : ∀ x : ℝ³, x ∈ L.chaoticInvariantSet →
    ∃ (γ : ℝ → ℝ³), γ ∈ L.periodicOrbits ∧ dist (x, Set.range γ) < ε
  horseshoePresent : L.symbolicDynamics.ContainsShiftSpace

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse