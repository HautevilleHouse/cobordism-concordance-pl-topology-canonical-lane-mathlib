import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure ConcordanceClassificationPackage where
  sourceManifold : Type u
  targetManifold : Type v
  concordanceExists : Prop
  cobordismClassInvariant : Prop
  homotopyEquivalenceCondition : Prop
  plStructurePreserved : Prop

structure ConcordanceClassificationEvidence (C : ConcordanceClassificationPackage) where
  concordanceExistsClosed : C.concordanceExists
  cobordismClassInvariantClosed : C.cobordismClassInvariant
  homotopyEquivalenceConditionClosed : C.homotopyEquivalenceCondition
  plStructurePreservedClosed : C.plStructurePreserved

def ConcordanceClassificationClosed (C : ConcordanceClassificationPackage) : Prop :=
  C.concordanceExists ∧ C.cobordismClassInvariant ∧ C.homotopyEquivalenceCondition ∧ C.plStructurePreserved

theorem concordance_classification_closed_from_evidence
    (C : ConcordanceClassificationPackage) (E : ConcordanceClassificationEvidence C) :
    ConcordanceClassificationClosed C := by
  exact And.intro E.concordanceExistsClosed (And.intro E.cobordismClassInvariantClosed (And.intro E.homotopyEquivalenceConditionClosed E.plStructurePreservedClosed))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse