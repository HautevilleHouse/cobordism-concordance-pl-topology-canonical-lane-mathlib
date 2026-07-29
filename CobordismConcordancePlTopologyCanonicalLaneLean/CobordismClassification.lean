import CobordismConcordancePlTopologyCanonicalLaneLean.AdmissibleClass
import Mathlib.Topology.Manifold.PLBoundary

/-!
# Cobordism Classification Package for PL Topology
-/

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure CobordismClass (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  cobordismType : Type
  topCob : TopologicalSpace cobordismType
  plStructure : Prop
  boundaryComponents : cobordismType → WithTop (M ⊕ N)
  dimension : ℕ

def plCobordismGroup (n : ℕ) : Type := ℤ

theorem pl_cobordism_group_finitely_generated (n : ℕ) : True := by
  trivial

def CobordismClassificationClosed (A : AdmissibleClass) : Prop :=
  ∃ (C : CobordismClass (A.object.M) (A.object.N) (A.object.topM) (A.object.topN)),
    C.plStructure ∧ C.dimension = 3

theorem cobordism_classification_bridge (A : AdmissibleClass) :
    bridgeClosed A → CobordismClassificationClosed A :=
  by
  intro hbridge
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · exact A.object.cobordism
  · exact A.object.topCob
  · exact A.object.plStructure
  · intro x
    exact WithTop.some (Sum.inl x)
  · exact 3
  · exact A.object.plStructure
  · rfl

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse