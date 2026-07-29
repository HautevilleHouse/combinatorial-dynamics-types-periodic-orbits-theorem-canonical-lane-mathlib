import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure SharkovskyOrdering where
  ordering : ℕ → ℕ → Prop
  leastElement : ℕ
  orderingProperties : Prop

structure SharkovskyEvidence (S : SharkovskyOrdering) where
  orderingTransitive : ∀ a b c : ℕ, S.ordering a b → S.ordering b c → S.ordering a c
  orderingTotal : ∀ a b : ℕ, S.ordering a b ∨ S.ordering b a
  leastElementProperty : ∀ n : ℕ, S.ordering S.leastElement n

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse