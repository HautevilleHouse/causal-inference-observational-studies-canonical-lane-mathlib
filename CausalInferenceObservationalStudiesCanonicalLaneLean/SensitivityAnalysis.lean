import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure SensitivityAnalysisPackage where
  sensitivityParameter : Type u
  biasBound : Prop
  robustnessCheck : Prop

def SensitivityAnalysisClosed (S : SensitivityAnalysisPackage) : Prop :=
  S.biasBound ∧ S.robustnessCheck

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse