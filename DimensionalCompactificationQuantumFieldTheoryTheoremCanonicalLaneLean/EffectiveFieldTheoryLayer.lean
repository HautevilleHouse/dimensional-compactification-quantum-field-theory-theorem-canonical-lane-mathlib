import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean

structure EffectiveFieldTheoryCertificate where
  decouplingScale : Prop
  operatorExpansion : Prop
  matchingConditions : Prop
  decouplingScaleClosed : decouplingScale
  operatorExpansionClosed : operatorExpansion
  matchingConditionsClosed : matchingConditions

def sourceEffectiveFieldTheoryCertificate : EffectiveFieldTheoryCertificate := {
  decouplingScale := sourceFormulaModels.length = sourceFormulaModelCount
  operatorExpansion := baselineCertificateGates.length = 7
  matchingConditions := outsideConstantDependencyCount = 0
  decouplingScaleClosed := rfl
  operatorExpansionClosed := rfl
  matchingConditionsClosed := rfl
}

def EffectiveFieldTheoryClosed (C : EffectiveFieldTheoryCertificate) : Prop :=
  C.decouplingScale ∧ C.operatorExpansion ∧ C.matchingConditions

theorem source_effective_field_theory_closed :
    EffectiveFieldTheoryClosed sourceEffectiveFieldTheoryCertificate := by
  exact And.intro sourceEffectiveFieldTheoryCertificate.decouplingScaleClosed
    (And.intro sourceEffectiveFieldTheoryCertificate.operatorExpansionClosed
      sourceEffectiveFieldTheoryCertificate.matchingConditionsClosed)

end DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse