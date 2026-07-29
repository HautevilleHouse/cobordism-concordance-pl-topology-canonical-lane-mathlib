import cobordismConcordancePlTopologyCanonicalLaneLean.PLTopology

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure CobordismInvariantsPackage where
  signature : ℤ
  eulerCharacteristic : ℤ
  genus : ℕ
  pontryaginNumbers : List ℤ
  stiefelWhitneyNumbers : List ℤ
  signatureInvariant : Prop
  eulerInvariant : Prop
  genusInvariant : Prop
  pontryaginInvariant : Prop
  stiefelWhitneyInvariant : Prop

structure CobordismInvariantsEvidence (P : CobordismInvariantsPackage) where
  signatureInvariantClosed : P.signatureInvariant
  eulerInvariantClosed : P.eulerInvariant
  genusInvariantClosed : P.genusInvariant
  pontryaginInvariantClosed : P.pontryaginInvariant
  stiefelWhitneyInvariantClosed : P.stiefelWhitneyInvariant

def CobordismInvariantsClosed (P : CobordismInvariantsPackage) : Prop :=
  P.signatureInvariant ∧ P.eulerInvariant ∧ P.genusInvariant ∧
  P.pontryaginInvariant ∧ P.stiefelWhitneyInvariant

theorem cobordism_invariants_closed_from_evidence (P : CobordismInvariantsPackage)
    (E : CobordismInvariantsEvidence P) : CobordismInvariantsClosed P := by
  exact And.intro E.signatureInvariantClosed
    (And.intro E.eulerInvariantClosed
      (And.intro E.genusInvariantClosed
        (And.intro E.pontryaginInvariantClosed E.stiefelWhitneyInvariantClosed)))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse