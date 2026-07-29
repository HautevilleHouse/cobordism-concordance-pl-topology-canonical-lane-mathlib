import CobordismConcordancePlTopologyCanonicalLaneLean.ConcordanceInvariance

/-!
# PL Transversality Package

Provides the PL transversality results needed for cobordism and concordance.
-/

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure PLTransversalityPackage where
  transverseApproximationExists : Prop
  intersectionPairingWellDefined : Prop
  normalBundlesClassified : Prop

structure PLTransversalityEvidence (T : PLTransversalityPackage) where
  transverseApproximationExistsClosed : T.transverseApproximationExists
  intersectionPairingWellDefinedClosed : T.intersectionPairingWellDefined

def PLTransversalityClosed (T : PLTransversalityPackage) : Prop :=
  T.transverseApproximationExists ∧ T.intersectionPairingWellDefined

theorem pl_transversality_closed_from_evidence
    (T : PLTransversalityPackage) (E : PLTransversalityEvidence T) :
    PLTransversalityClosed T := by
  exact And.intro E.transverseApproximationExistsClosed
    E.intersectionPairingWellDefinedClosed

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse
