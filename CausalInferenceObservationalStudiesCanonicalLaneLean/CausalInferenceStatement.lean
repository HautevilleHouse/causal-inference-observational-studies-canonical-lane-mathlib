import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesCanonicalLaneLean.CausalInferenceObjects

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool
  carriedGap : String

def mathlibProofObligation : MathlibProofObligation := {
  sourceKey := "causal-inference-observational-studies",
  theoremObject := "Average Treatment Effect Identification",
  commonCoreImported := true,
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  unrestrictedClassicalClosureNative := false,
  carriedGap := "causal effect identification under unconfoundedness and positivity"
}

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse