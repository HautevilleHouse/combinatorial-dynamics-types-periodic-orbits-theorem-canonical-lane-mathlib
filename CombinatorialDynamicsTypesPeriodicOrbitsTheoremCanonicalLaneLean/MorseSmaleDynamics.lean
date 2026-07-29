import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure MorseSmaleSystem (Sigma : Type) (S : ShiftSpace Sigma) where
  gradientFlow : Type u
  criticalPoints : Set (ℕ -> Sigma)
  periodicOrbits : Set (ℕ -> Sigma)
  stableManifolds : Type v
  unstableManifolds : Type w
  transversality : Prop
  hyperbolicity : Prop

def MorseSmaleClosed {Sigma : Type} {S : ShiftSpace Sigma} (M : MorseSmaleSystem Sigma S) : Prop :=
  M.transversality ∧ M.hyperbolicity

def SmaleDynamicsFromShift (Sigma : Type) (S : ShiftSpace Sigma) (P : PeriodicPointsSet Sigma S) : Prop :=
  ∃ (M : MorseSmaleSystem Sigma S), MorseSmaleClosed M

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
