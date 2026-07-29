import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean

structure SpectralDecomposition where
  spectrum : List ℝ
  multiplicities : List ℕ
  decompositionType : String
  isClosed : Prop

structure SpectralDecompositionEvidence (s : SpectralDecomposition) where
  spectrumNonempty : s.spectrum ≠ []
  multiplicitiesLengthMatch : s.multiplicities.length = s.spectrum.length
  decompositionTypeAdmissible : s.decompositionType = "admissible"
  isClosed : s.isClosed

def SpectralDecompositionClosed (s : SpectralDecomposition) : Prop :=
  s.isClosed

theorem spectral_decomposition_closed_from_evidence (s : SpectralDecomposition) (e : SpectralDecompositionEvidence s) :
  SpectralDecompositionClosed s := by
  exact e.isClosed

end CombinatorialDynamicsTypesPeriodicOrbitsTheoremCanonicalLaneLean
end HautevilleHouse
