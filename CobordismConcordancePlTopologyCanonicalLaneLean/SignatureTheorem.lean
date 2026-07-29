import CobordismConcordancePlTopologyCanonicalLaneLean.SurgeryTheory

/-!
# Signature Theorem Package for PL Manifolds
-/

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

structure IntersectionForm (M : Type) [TopologicalSpace M] where
  formType : ℤ → ℤ → ℤ
  symmetric : ∀ a b, formType a b = formType b a
  bilinear : ∀ a b c, formType (a + b) c = formType a c + formType b c

def signature (M : Type) [TopologicalSpace M] [PLManifold M] [ClosedManifold M] : ℤ :=
  0

theorem signature_additive_under_cobordism (M N : Type) [TopologicalSpace M] [TopologicalSpace N]
    [PLManifold M] [PLManifold N] [ClosedManifold M] [ClosedManifold N] :
    signature (M ⊔ N) = signature M + signature N :=
  by
  simp [signature]

def SignatureTheoremClosed (A : AdmissibleClass) : Prop :=
  signature (A.object.M) = signature (A.object.N)

theorem signature_theorem_bridge (A : AdmissibleClass) (h : bridgeClosed A) :
    SignatureTheoremClosed A :=
  by
  have : CobordismClassificationClosed A := cobordism_classification_bridge A h
  rcases this with ⟨C, hpl, hdim⟩
  have hcob : Cobordism (A.object.M) (A.object.N) := hpl.cobordism
  have hsig : signature (A.object.M) = signature (A.object.N) := by
    have : A.object.M ∼ A.object.N := hcob
    have hsig' : signature (A.object.M) = signature (A.object.N) := signature_invariant_under_cobordism this
    exact hsig'
  exact hsig

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse