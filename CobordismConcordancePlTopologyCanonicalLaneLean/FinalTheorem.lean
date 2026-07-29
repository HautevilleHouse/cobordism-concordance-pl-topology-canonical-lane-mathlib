import cobordismConcordancePlTopologyCanonicalLaneLean.BridgeLemmas
import cobordismConcordancePlTopologyCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

def ConstrainedCobordismClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_endgame (A : AdmissibleClass) :
    ConstrainedCobordismClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse