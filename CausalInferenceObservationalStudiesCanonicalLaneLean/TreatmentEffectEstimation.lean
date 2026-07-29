import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesCanonicalLaneLean.CausalModel

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure TreatmentEffectEstimationPackage {P : CausalModelPackage} where
  estimator : Type u
  identificationStrategy : Prop
  asymptoticNormality : Prop
  consistencyProof : Prop

structure TreatmentEffectEstimationEvidence {P : CausalModelPackage}
    (E : TreatmentEffectEstimationPackage P) where
  identificationStrategyClosed : E.identificationStrategy
  asymptoticNormalityClosed : E.asymptoticNormality
  consistencyProofClosed : E.consistencyProof

def TreatmentEffectEstimationClosed {P : CausalModelPackage}
    (E : TreatmentEffectEstimationPackage P) : Prop :=
  E.identificationStrategy ∧ E.asymptoticNormality ∧ E.consistencyProof

theorem treatment_effect_estimation_closed_from_evidence
    {P : CausalModelPackage} (E : TreatmentEffectEstimationPackage P)
    (Ev : TreatmentEffectEstimationEvidence E) : TreatmentEffectEstimationClosed E := by
  exact And.intro Ev.identificationStrategyClosed
    (And.intro Ev.asymptoticNormalityClosed Ev.consistencyProofClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse