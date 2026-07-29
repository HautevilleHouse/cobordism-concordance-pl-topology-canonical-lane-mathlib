import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure ConcordanceGroup where
  cobordismCat : CobordismCategory
  concordanceRelation : Prop
  groupOperation : Type u
  inverseOperation : Type u
  identityElement : Type u
  groupLaws : Prop
  relationTransitive : Prop
  relationSymmetric : Prop
  relationReflexive : Prop

structure ConcordanceGroupEvidence (G : ConcordanceGroup) where
  groupLawsClosed : G.groupLaws
  relationTransitiveClosed : G.relationTransitive
  relationSymmetricClosed : G.relationSymmetric
  relationReflexiveClosed : G.relationReflexive

def ConcordanceGroupClosed (G : ConcordanceGroup) : Prop :=
  G.groupLaws ∧ G.relationTransitive ∧ G.relationSymmetric ∧ G.relationReflexive

theorem concordance_group_closed_from_evidence (G : ConcordanceGroup)
    (E : ConcordanceGroupEvidence G) : ConcordanceGroupClosed G := by
  exact And.intro E.groupLawsClosed
    (And.intro E.relationTransitiveClosed
      (And.intro E.relationSymmetricClosed E.relationReflexiveClosed))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse