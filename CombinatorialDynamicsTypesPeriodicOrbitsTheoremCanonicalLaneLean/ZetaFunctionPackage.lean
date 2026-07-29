import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure ZetaFunctionPackage {G : OrbitGraphPackage} {T : TransferOperatorPackage G} where
  zetaFunction : ℕ → ℂ
  functionalEquation : Prop
  primePeriodicOrbitCount : ℕ → ℕ
  leadingPole : ℂ
  growthCohomologyCorrespondence : Prop

structure ZetaFunctionEvidence {G : OrbitGraphPackage} {T : TransferOperatorPackage G} (Z : ZetaFunctionPackage T) where
  functionalEquationClosed : Z.functionalEquation
  growthCohomologyCorrespondenceClosed : Z.growthCohomologyCorrespondence

def ZetaFunctionClosed {G : OrbitGraphPackage} {T : TransferOperatorPackage G} (Z : ZetaFunctionPackage T) : Prop :=
  Z.functionalEquation ∧ Z.growthCohomologyCorrespondence

theorem zeta_function_closed_from_evidence {G : OrbitGraphPackage} {T : TransferOperatorPackage G} (Z : ZetaFunctionPackage T) (E : ZetaFunctionEvidence Z) : ZetaFunctionClosed Z :=
  And.intro E.functionalEquationClosed E.growthCohomologyCorrespondenceClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
