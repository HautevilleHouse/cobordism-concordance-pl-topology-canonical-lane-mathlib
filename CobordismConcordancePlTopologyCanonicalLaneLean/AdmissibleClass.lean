import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure PLAdmittedObject where
  manifold : Type u
  topology : TopologicalSpace manifold
  plStructure : Prop
  dimension : Nat
  compact : Prop
  withoutBoundary : Prop
  conclusion : plStructure ∧ compact ∧ withoutBoundary

structure AdmissibleClass where
  object : PLAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse