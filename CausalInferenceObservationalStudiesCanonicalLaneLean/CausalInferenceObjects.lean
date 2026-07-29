import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalSpace where
  unit : Type u
  treatment : Type v
  outcome : Type w
  covariates : Type x

default

structure CausalAdmittedObject where
  space : CausalSpace
  potentialOutcomes : (space.unit → space.treatment → space.outcome) → Prop
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  conclusion : Prop

def CausalWitnessClosed (O : CausalAdmittedObject) : Prop :=
  O.conclusion

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse