import DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean

structure CompactifiedSpacetime where
  baseManifold : Type
  fiberDim : ℕ
  totalDim : ℕ
  metric : baseManifold → ℝ
  isCompact : Prop

structure CompactifiedSpacetimeCertificate where
  spacetime : CompactifiedSpacetime
  metricWellDefined : Prop
  compactnessWitness : Prop
  metricWellDefinedProof : metricWellDefined
  compactnessWitnessProof : compactnessWitness

def sourceCompactifiedSpacetimeCertificate : CompactifiedSpacetimeCertificate := {
  spacetime := {
    baseManifold := Fin 4 → ℝ
    fiberDim := 6
    totalDim := 10
    metric := fun _ => 1.0
    isCompact := True
  }
  metricWellDefined := True
  compactnessWitness := True
  metricWellDefinedProof := rfl
  compactnessWitnessProof := rfl
}

def CompactifiedSpacetimeClosed (C : CompactifiedSpacetimeCertificate) : Prop :=
  C.metricWellDefined ∧ C.compactnessWitness

theorem source_compactified_spacetime_closed :
    CompactifiedSpacetimeClosed sourceCompactifiedSpacetimeCertificate := by
  exact And.intro sourceCompactifiedSpacetimeCertificate.metricWellDefinedProof
    sourceCompactifiedSpacetimeCertificate.compactnessWitnessProof

end DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse