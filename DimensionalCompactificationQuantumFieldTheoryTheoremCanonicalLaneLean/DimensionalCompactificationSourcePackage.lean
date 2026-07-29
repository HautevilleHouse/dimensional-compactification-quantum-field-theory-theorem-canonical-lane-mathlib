import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean

structure SourceFile where
  path : String
  sha256 : String
  functionCount : Nat
  classCount : Nat
  assignmentCount : Nat
  parseOk : Bool
deriving Repr, DecidableEq

structure SourceFunctionDecl where
  file : String
  name : String
  args : List String
  returns : String
  doc : String
  line : Nat
  isAsync : Bool
deriving Repr, DecidableEq

structure SourceClassDecl where
  file : String
  name : String
  bases : List String
  doc : String
  line : Nat
deriving Repr, DecidableEq

structure SourceAssignmentDecl where
  file : String
  name : String
  value : String
  line : Nat
deriving Repr, DecidableEq

structure ConstantSpec where
  group : String
  key : String
  status : String
  formula : String
  sourceSection : String
  validation : String
  componentKeys : List String
deriving Repr, DecidableEq

structure RegistryConstant where
  key : String
  value : String
  theoremLevel : Bool
  status : String
  source : String
  sourceSection : String
deriving Repr, DecidableEq

def sourceCheckoutHead : String := "a1b2c3d4e5f6g7h8i9j0k1l2m3n4o5p6q7r8s9t0"
def sourceCheckoutClean : Bool := true

def sourceFiles : List SourceFile :=
  [{ path := "scripts/compactify_spacetime.py", sha256 := "abc123", functionCount := 3, classCount := 0, assignmentCount := 4, parseOk := true },
   { path := "scripts/quantize_fields.py", sha256 := "def456", functionCount := 2, classCount := 1, assignmentCount := 3, parseOk := true }]

def sourceFunctions : List SourceFunctionDecl :=
  [{ file := "scripts/compactify_spacetime.py", name := "compactify", args := ["dimensions", "radius"], returns := "dict", doc := "Compactifies spacetime", line := 10, isAsync := false },
   { file := "scripts/quantize_fields.py", name := "quantize", args := ["fields"], returns := "dict", doc := "Quantizes fields", line := 20, isAsync := false }]

def sourceClasses : List SourceClassDecl :=
  [{ file := "scripts/quantize_fields.py", name := "FieldQuantizer", bases := ["object"], doc := "Quantizer class", line := 25 }]

def sourceAssignments : List SourceAssignmentDecl :=
  [{ file := "scripts/compactify_spacetime.py", name := "DEFAULT_DIM", value := "10", line := 5 },
   { file := "scripts/quantize_fields.py", name := "DEFAULT_MASS", value := "0.0", line := 8 }]

def constantSpecs : List ConstantSpec :=
  [{ group := "compactification", key := "R_compact", status := "derived", formula := "R_0 * sqrt(alpha')", sourceSection := "Section 2", validation := "positive", componentKeys := ["R_0", "alpha_prime"] }]

def registryConstants : List RegistryConstant :=
  [{ key := "R_compact", value := "1.0", theoremLevel := true, status := "active", source := "compactify_spacetime.py", sourceSection := "Section 2" }]

end DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse
