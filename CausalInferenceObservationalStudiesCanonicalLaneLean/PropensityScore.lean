import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure PropensityScorePackage where
  treatmentModel : Type u
  propensityScoreFunction : Type v
  positivity : Prop
  balancingProperty : Prop

def PropensityScoreClosed (P : PropensityScorePackage) : Prop :=
  P.positivity ∧ P.balancingProperty

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse