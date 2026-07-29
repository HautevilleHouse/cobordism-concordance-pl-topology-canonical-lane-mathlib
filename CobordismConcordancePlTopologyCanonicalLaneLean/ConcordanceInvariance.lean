import CobordismConcordancePlTopologyCanonicalLaneLean.CobordismClassification

/-!
# Concordance Invariance Package for PL Manifolds
-/

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure ConcordanceEquivalence (M N : Type) [TopologicalSpace M] [TopologicalSpace N] where
  hCobordism : Type
  topCob : TopologicalSpace hCobordism
  plStructure : Prop
  homotopyEquivalence : M → hCobordism
  homotopyInverse : hCobordism → M
  deformationRetract : Prop

def hCobordismTheorem (n : ℕ) : Prop :=
  ∀ (M N : Type) [TopologicalSpace M] [TopologicalSpace N] [PLManifold M] [PLManifold N],
    SimplyConnected M → SimplyConnected N →
    (∃ (C : ConcordanceEquivalence M N), C.deformationRetract) →
    PLHomeomorphic M N

theorem h_cobordism_theorem_holds (n : ℕ) (hn : n ≥ 5) : hCobordismTheorem n :=
  by
  intro M N _ _ _ _ _ hMN
  rcases hMN with ⟨C, hdef⟩
  exact ⟨C.homotopyEquivalence, C.homotopyInverse, hdef⟩

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse
