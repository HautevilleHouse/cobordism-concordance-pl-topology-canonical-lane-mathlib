import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure ConcordanceEquivalence where
  embeddedManifold : Type u
  topologicalStructure : TopologicalSpace embeddedManifold
  PLStructure : Prop
  concordanceRelation : Prop
  equivalenceRelation : Prop
  symmetry : Prop
  transitivity : Prop
  reflexivity : Prop

structure ConcordanceEvidence (C : ConcordanceEquivalence) where
  PLStructureClosed : C.PLStructure
  concordanceRelationClosed : C.concordanceRelation
  equivalenceRelationClosed : C.equivalenceRelation
  symmetryClosed : C.symmetry
  transitivityClosed : C.transitivity
  reflexivityClosed : C.reflexivity

def ConcordanceEquivalenceClosed (C : ConcordanceEquivalence) : Prop :=
  C.PLStructure ∧ C.concordanceRelation ∧ C.equivalenceRelation ∧ C.symmetry ∧ C.transitivity ∧ C.reflexivity

theorem concordance_equivalence_closed_from_evidence (C : ConcordanceEquivalence) (E : ConcordanceEvidence C) :
    ConcordanceEquivalenceClosed C := by
  exact And.intro E.PLStructureClosed (And.intro E.concordanceRelationClosed
    (And.intro E.equivalenceRelationClosed (And.intro E.symmetryClosed (And.intro E.transitivityClosed E.reflexivityClosed))))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse