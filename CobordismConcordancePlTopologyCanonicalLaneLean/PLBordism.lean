import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure PLBordismPackage where
  sourceDimension : Nat
  targetDimension : Nat
  sourceManifold : Type u
  targetManifold : Type v
  cobordismManifold : Type w
  plCobordism : Prop
  boundaryCondition : Prop
  sourceCompact : Prop
  targetCompact : Prop

structure PLBordismEvidence (P : PLBordismPackage) where
  plCobordismClosed : P.plCobordism
  boundaryConditionClosed : P.boundaryCondition
  sourceCompactClosed : P.sourceCompact
  targetCompactClosed : P.targetCompact

def PLBordismClosed (P : PLBordismPackage) : Prop :=
  P.plCobordism ∧ P.boundaryCondition ∧ P.sourceCompact ∧ P.targetCompact

theorem pl_bordism_closed_from_evidence (P : PLBordismPackage) (E : PLBordismEvidence P) :
    PLBordismClosed P := by
  exact And.intro E.plCobordismClosed (And.intro E.boundaryConditionClosed (And.intro E.sourceCompactClosed E.targetCompactClosed))

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse