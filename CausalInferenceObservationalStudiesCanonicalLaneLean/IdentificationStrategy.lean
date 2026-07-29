import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IdentificationStrategy where
  estimand : Prop
  identifyingAssumptions : Prop
  estimator : Type u

def IdentificationClosed (S : IdentificationStrategy) : Prop :=
  S.estimand ∧ S.identifyingAssumptions

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse