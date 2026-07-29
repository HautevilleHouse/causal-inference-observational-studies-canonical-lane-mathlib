import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalEstimandPackage where
  averageTreatmentEffect : Prop
  conditionalAverageTreatmentEffect : Prop
  marginalStructuralModel : Prop
  instrumentalVariableEstimand : Prop

structure CausalEstimandEvidence (E : CausalEstimandPackage) where
  averageTreatmentEffectClosed : E.averageTreatmentEffect
  conditionalAverageTreatmentEffectClosed : E.conditionalAverageTreatmentEffect
  marginalStructuralModelClosed : E.marginalStructuralModel
  instrumentalVariableEstimandClosed : E.instrumentalVariableEstimand

def CausalEstimandClosed (E : CausalEstimandPackage) : Prop :=
  E.averageTreatmentEffect ∧ E.conditionalAverageTreatmentEffect ∧
  E.marginalStructuralModel ∧ E.instrumentalVariableEstimand

theorem causal_estimand_closed_from_evidence
    (E : CausalEstimandPackage) (Ev : CausalEstimandEvidence E) :
    CausalEstimandClosed E := by
  exact And.intro Ev.averageTreatmentEffectClosed
    (And.intro Ev.conditionalAverageTreatmentEffectClosed
      (And.intro Ev.marginalStructuralModelClosed Ev.instrumentalVariableEstimandClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse