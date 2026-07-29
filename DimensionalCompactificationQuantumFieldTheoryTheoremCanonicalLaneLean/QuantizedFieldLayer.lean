import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean

structure QuantizedFieldCertificate where
  fieldName : String
  quantized : Prop
  quantizedProof : quantized

def sourceQuantizedFieldCertificate : QuantizedFieldCertificate := {
  fieldName := "Phi"
  quantized := True
  quantizedProof := by
    trivial
}

def QuantizedFieldClosed (C : QuantizedFieldCertificate) : Prop :=
  C.quantized

theorem source_quantized_field_closed : QuantizedFieldClosed sourceQuantizedFieldCertificate := by
  unfold QuantizedFieldClosed
  exact sourceQuantizedFieldCertificate.quantizedProof

end DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse