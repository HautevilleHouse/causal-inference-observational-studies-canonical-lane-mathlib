import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalAdmittedObject where
  population : Type u
  treatment : Type v
  outcome : Type w
  confounders : Type x
  dagStructure : Prop
  ignorability : Prop
  positivity : Prop
  identificationClaim : Prop
  conclusion : identificationClaim

structure AdmissibleClass where
  object : CausalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  CausalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def CausalWitnessClosed (O : CausalAdmittedObject) : Prop :=
  O.identificationClaim

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse