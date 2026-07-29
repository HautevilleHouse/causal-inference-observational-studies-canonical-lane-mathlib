import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalStudyObject where
  population : Type
  treatment : String
  outcome : String
  confounders : List String
  observationalData : Prop
  causalEffectIdentified : Prop
  noUnmeasuredConfounding : Prop
  conclusion : causalEffectIdentified ∧ noUnmeasuredConfounding

def CausalWitnessClosed (O : CausalStudyObject) : Prop :=
  O.causalEffectIdentified ∧ O.noUnmeasuredConfounding

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse