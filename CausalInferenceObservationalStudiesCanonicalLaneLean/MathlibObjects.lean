import CausalInferenceObservationalStudiesCanonicalLaneLean.TheoremStatement
import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CausalObject where
  carrier : Type
  topology : TopologicalSpace carrier

structure CausalAdmittedObject where
  space : CausalObject
  identifiabilityAssumptions : Prop
  positivityAssumption : Prop
  consistencyAssumption : Prop
  causalEffectDefined : Prop
  conclusion : causalEffectDefined

structure CausalEndgameState where
  object : CausalAdmittedObject

def CausalWitnessClosed (O : CausalAdmittedObject) : Prop :=
  O.causalEffectDefined

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
