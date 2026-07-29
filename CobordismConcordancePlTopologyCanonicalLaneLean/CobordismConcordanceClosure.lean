import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

def ConstrainedCobordismConcordanceClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cobordism_concordance_endgame (A : AdmissibleClass) :
    ConstrainedCobordismConcordanceClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse