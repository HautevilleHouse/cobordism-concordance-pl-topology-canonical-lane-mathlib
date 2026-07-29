import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure PLStructure where
  manifold : Type u
  atlas : Type v
  chartCompatibility : Prop
  subdivisible : Prop
  triangulable : Prop
  invarianceUnderSubdivision : Prop

structure PLEvidence (P : PLStructure) where
  chartCompatibilityClosed : P.chartCompatibility
  subdivisibleClosed : P.subdivisible
  triangulableClosed : P.triangulable
  invarianceUnderSubdivisionClosed : P.invarianceUnderSubdivision

def PLStructureClosed (P : PLStructure) : Prop :=
  P.chartCompatibility ∧ P.subdivisible ∧ P.triangulable ∧ P.invarianceUnderSubdivision

theorem pl_structure_closed_from_evidence (P : PLStructure) (E : PLEvidence P) :
    PLStructureClosed P := by
  exact And.intro E.chartCompatibilityClosed (And.intro E.subdivisibleClosed (And.intro E.triangulableClosed E.invarianceUnderSubdivisionClosed))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse