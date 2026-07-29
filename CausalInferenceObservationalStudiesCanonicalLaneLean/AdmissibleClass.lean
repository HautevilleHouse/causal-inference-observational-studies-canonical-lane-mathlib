import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure AdmissibleClass where
  object : CausalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CausalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
