import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure TransferOperatorPackage (G : OrbitGraphPackage) where
  transferOperator : (G.vertexSet → ℂ) → (G.vertexSet → ℂ)
  spectralRadius : ℝ
  analyticVariationalPrinciple : Prop
  zetaFunctionCreated : Prop

structure TransferOperatorEvidence {G : OrbitGraphPackage} (T : TransferOperatorPackage G) where
  analyticVariationalPrincipleClosed : T.analyticVariationalPrinciple
  zetaFunctionCreatedClosed : T.zetaFunctionCreated

def TransferOperatorClosed {G : OrbitGraphPackage} (T : TransferOperatorPackage G) : Prop :=
  T.analyticVariationalPrinciple ∧ T.zetaFunctionCreated

theorem transfer_operator_closed_from_evidence {G : OrbitGraphPackage} (T : TransferOperatorPackage G) (E : TransferOperatorEvidence T) : TransferOperatorClosed T :=
  And.intro E.analyticVariationalPrincipleClosed E.zetaFunctionCreatedClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
