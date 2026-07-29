import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure LiYorkeChaosPackage (M : GraphMap) where
  scrambledSet : Set M.vertexSet
  uncountableProperty : Prop
  proximalPairs : Prop
  distalPairs : Prop

structure LiYorkeEvidence {M : GraphMap} (L : LiYorkeChaosPackage M) where
  scrambledSetUncountable : L.uncountableProperty
  proximalPairExists : ∀ x y : M.vertexSet, x ∈ L.scrambledSet → y ∈ L.scrambledSet → x ≠ y →
    (∃ (n : ℕ), dist (M.map^[n] x, M.map^[n] y) < ε)
  distalPairExists : ∀ x y : M.vertexSet, x ∈ L.scrambledSet → y ∈ L.scrambledSet → x ≠ y →
    (∃ (n : ℕ), dist (M.map^[n] x, M.map^[n] y) > δ)

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse