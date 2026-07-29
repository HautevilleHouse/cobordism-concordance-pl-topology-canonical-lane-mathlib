import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure PontryaginThomConstruction where
  cobordismCat : CobordismCategory
  n : Nat
  universalBundle : Type u
  thomSpace : Type v
  thomSpectrum : Type w
  collapseMap : Type x
  collapseMapHomotopyEquivalence : Prop
  isomorphismOnCobordism : Prop
  ptIsomorphism : Prop

structure PontryaginThomEvidence (PT : PontryaginThomConstruction) where
  collapseMapHomotopyEquivalenceClosed : PT.collapseMapHomotopyEquivalence
  isomorphismOnCobordismClosed : PT.isomorphismOnCobordism
  ptIsomorphismClosed : PT.ptIsomorphism

def PontryaginThomClosed (PT : PontryaginThomConstruction) : Prop :=
  PT.collapseMapHomotopyEquivalence ∧ PT.isomorphismOnCobordism ∧ PT.ptIsomorphism

theorem pontryagin_thom_closed_from_evidence (PT : PontryaginThomConstruction)
    (E : PontryaginThomEvidence PT) : PontryaginThomClosed PT := by
  exact And.intro E.collapseMapHomotopyEquivalenceClosed
    (And.intro E.isomorphismOnCobordismClosed E.ptIsomorphismClosed)

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse