import cobordismConcordancePlTopologyCanonicalLaneLean.PLTopology

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure DualityTheoremsPackage where
  poincareDuality : Prop
  lefschetzDuality : Prop
  alexanderDuality : Prop
  intersectionPairing : Prop
  signatureTheorem : Prop
  dualityForPLManifolds : Prop

structure DualityTheoremsEvidence (P : DualityTheoremsPackage) where
  poincareDualityClosed : P.poincareDuality
  lefschetzDualityClosed : P.lefschetzDuality
  alexanderDualityClosed : P.alexanderDuality
  intersectionPairingClosed : P.intersectionPairing
  signatureTheoremClosed : P.signatureTheorem
  dualityForPLManifoldsClosed : P.dualityForPLManifolds

def DualityTheoremsClosed (P : DualityTheoremsPackage) : Prop :=
  P.poincareDuality ∧ P.lefschetzDuality ∧ P.alexanderDuality ∧
  P.intersectionPairing ∧ P.signatureTheorem ∧ P.dualityForPLManifolds

theorem duality_theorems_closed_from_evidence (P : DualityTheoremsPackage)
    (E : DualityTheoremsEvidence P) : DualityTheoremsClosed P := by
  exact And.intro E.poincareDualityClosed
    (And.intro E.lefschetzDualityClosed
      (And.intro E.alexanderDualityClosed
        (And.intro E.intersectionPairingClosed
          (And.intro E.signatureTheoremClosed E.dualityForPLManifoldsClosed))))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse