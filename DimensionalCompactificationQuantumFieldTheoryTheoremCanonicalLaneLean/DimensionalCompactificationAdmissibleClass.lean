import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean

structure CompactifiedSpace where
  baseManifold : Type
  fiber : Type
  compactificationRadius : ℝ

def admissibleCompactification (M : CompactifiedSpace) : Prop :=
  M.compactificationRadius > 0

end DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse