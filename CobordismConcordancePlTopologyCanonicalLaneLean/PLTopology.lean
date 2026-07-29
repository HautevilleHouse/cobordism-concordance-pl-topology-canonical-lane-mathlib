import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure PLTopologyPackage where
  manifoldDimension : ℕ
  triangulation : Prop
  combinatorialStructures : Prop
  plStructure : Prop
  handleDecomposition : Prop
  surgeryTheory : Prop

def PLTopologyClosed (P : PLTopologyPackage) : Prop :=
  P.triangulation ∧ P.combinatorialStructures ∧ P.plStructure ∧
  P.handleDecomposition ∧ P.surgeryTheory

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse