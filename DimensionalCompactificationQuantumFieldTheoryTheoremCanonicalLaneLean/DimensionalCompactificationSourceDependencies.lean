import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean

structure SourceImportDependency where
  file : String
  kind : String
  module : String
  name : String
  alias : String
  level : Nat
deriving Repr, DecidableEq

structure SourcePathDependency where
  file : String
  name : String
  path : String
  role : String
  line : Nat
deriving Repr, DecidableEq

def sourceImportDependencies : List SourceImportDependency :=
  [ { file := "scripts/compactify_spacetime.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
    { file := "scripts/compactify_spacetime.py", kind := "import", module := "argparse", name := "", alias := "", level := 0 },
    { file := "scripts/compactify_spacetime.py", kind := "import", module := "numpy", name := "", alias := "np", level := 0 },
    { file := "scripts/quantize_fields.py", kind := "from_import", module := "__future__", name := "annotations", alias := "", level := 0 },
    { file := "scripts/quantize_fields.py", kind := "import", module := "sympy", name := "", alias := "sp", level := 0 } ]

def sourceRuntimeModules : List String :=
  [ "__future__.annotations", "argparse", "numpy", "sympy" ]

def sourcePathDependencies : List SourcePathDependency :=
  [ { file := "scripts/compactify_spacetime.py", name := "INPUT_CONFIG", path := "config/compactification_params.json", role := "artifact", line := 15 },
    { file := "scripts/quantize_fields.py", name := "OUTPUT_FIELDS", path := "artifacts/quantized_fields.json", role := "artifact", line := 12 } ]

def sourceImportDependencyCount : Nat := 5
def sourceRuntimeModuleCount : Nat := 4
def sourcePathDependencyCount : Nat := 2

theorem source_import_dependency_count_checked : sourceImportDependencies.length = 5 := by
  decide

theorem source_runtime_module_count_checked : sourceRuntimeModules.length = 4 := by
  decide

theorem source_path_dependency_count_checked : sourcePathDependencies.length = 2 := by
  decide

end DimensionalCompactificationQuantumFieldTheoryTheoremCanonicalLaneLean
end HautevilleHouse
