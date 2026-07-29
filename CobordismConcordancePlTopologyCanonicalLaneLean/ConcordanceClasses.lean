import cobordismConcordancePlTopologyCanonicalLaneLean.CobordismInvariants

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure ConcordanceClassesPackage where
  concordanceRelation : Prop
  groupLaw : Prop
  classificationDimension : ℕ
  homologySphereCase : Prop
  knotConcordance : Prop
  invariantAbelianGroup : Prop

structure ConcordanceClassesEvidence (P : ConcordanceClassesPackage) where
  concordanceRelationClosed : P.concordanceRelation
  groupLawClosed : P.groupLaw
  classificationDimensionClosed : P.classificationDimension > 0
  homologySphereCaseClosed : P.homologySphereCase
  knotConcordanceClosed : P.knotConcordance
  invariantAbelianGroupClosed : P.invariantAbelianGroup

def ConcordanceClassesClosed (P : ConcordanceClassesPackage) : Prop :=
  P.concordanceRelation ∧ P.groupLaw ∧ (P.classificationDimension > 0) ∧
  P.homologySphereCase ∧ P.knotConcordance ∧ P.invariantAbelianGroup

theorem concordance_classes_closed_from_evidence (P : ConcordanceClassesPackage)
    (E : ConcordanceClassesEvidence P) : ConcordanceClassesClosed P := by
  exact And.intro E.concordanceRelationClosed
    (And.intro E.groupLawClosed
      (And.intro E.classificationDimensionClosed
        (And.intro E.homologySphereCaseClosed
          (And.intro E.knotConcordanceClosed E.invariantAbelianGroupClosed))))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse