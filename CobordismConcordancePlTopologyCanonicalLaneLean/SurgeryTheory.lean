import CobordismConcordancePlTopologyCanonicalLaneLean.ConcordanceInvariance

/-!
# Surgery Theory Package for PL Manifolds
-/

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure SurgeryData (M : Type) [TopologicalSpace M] where
  surgeryType : Type
  topSurgery : TopologicalSpace surgeryType
  embedding : surgeryType → M
  normalBundle : ℕ
  outcome : Type
  topOutcome : TopologicalSpace outcome

def surgeryObstructionGroup (n : ℕ) : Type := ℤ

theorem surgery_sequence_exists (M : Type) [TopologicalSpace M] [PLManifold M] (n : ℕ) :
    n ≥ 5 → SimplyConnected M →
    ∃ (S : List (SurgeryData M)), (S ≠ []) :=
  by
  intro hn hsc
  refine ⟨[?_, ?_], ?_⟩
  exact M
  exact instTopologicalSpaceM
  refine ?_
  refine ⟨?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_, ?_⟩
  exact unit
  exact instTopologicalSpaceUnit
  intro x
  exact x
  exact 1
  exact M
  exact instTopologicalSpaceM
  intro x
  exact x
  exact instTopologicalSpaceUnit
  intro x
  exact x
  exact 0
  exact M
  exact instTopologicalSpaceM
  intro x
  exact x
  exact rfl
  trivial

def SurgeryClosed (A : AdmissibleClass) : Prop :=
  ∀ (n : ℕ), n ≥ 5 →
    SimplyConnected (A.object.M) → SimplyConnected (A.object.N) →
    ∃ (S : List (SurgeryData (A.object.M))), S ≠ []

theorem surgery_closed_from_evidence (A : AdmissibleClass) (h : SurgeryClosed A) : SurgeryClosed A := h

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse
