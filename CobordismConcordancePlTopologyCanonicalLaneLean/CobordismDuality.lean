import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure CobordismDuality where
  cobordismGraph : Type u
  dualityPair : Type v
  orientationReversal : Prop
  dualCobordism : Prop
  dualityTheorem : Prop

structure DualityEvidence (D : CobordismDuality) where
  orientationReversalClosed : D.orientationReversal
  dualCobordismClosed : D.dualCobordism
  dualityTheoremClosed : D.dualityTheorem

def CobordismDualityClosed (D : CobordismDuality) : Prop :=
  D.orientationReversal ∧ D.dualCobordism ∧ D.dualityTheorem

theorem cobordism_duality_closed_from_evidence (D : CobordismDuality) (E : DualityEvidence D) :
    CobordismDualityClosed D := by
  exact And.intro E.orientationReversalClosed (And.intro E.dualCobordismClosed E.dualityTheoremClosed)

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse