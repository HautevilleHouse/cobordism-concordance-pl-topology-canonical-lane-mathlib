import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure CobordismCategory where
  dim : Nat
  objects : Type u
  morphisms : Type v
  source : morphisms → objects
  target : morphisms → objects
  composition : morphisms → morphisms → morphisms
  identity : objects → morphisms
  associativity : Prop
  leftUnit : Prop
  rightUnit : Prop
  cobordismDimensionCondition : dim ≥ 0

structure CobordismEvidence (C : CobordismCategory) where
  associativityClosed : C.associativity
  leftUnitClosed : C.leftUnit
  rightUnitClosed : C.rightUnit
  dimensionNonnegative : C.cobordismDimensionCondition

def CobordismCategoryClosed (C : CobordismCategory) : Prop :=
  C.associativity ∧ C.leftUnit ∧ C.rightUnit ∧ C.cobordismDimensionCondition

theorem cobordism_category_closed_from_evidence (C : CobordismCategory) (E : CobordismEvidence C) :
    CobordismCategoryClosed C := by
  exact And.intro E.associativityClosed (And.intro E.leftUnitClosed (And.intro E.rightUnitClosed E.dimensionNonnegative))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse