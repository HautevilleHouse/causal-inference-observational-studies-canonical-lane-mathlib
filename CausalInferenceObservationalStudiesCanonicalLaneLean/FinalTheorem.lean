import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

def ConstrainedCausalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_causal_endgame (A : AdmissibleClass) :
    ConstrainedCausalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse