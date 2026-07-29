import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure InstrumentalVariablePackage where
  instrument : Type u
  exclusionRestriction : Prop
  relevanceCondition : Prop
  monotonicityAssumption : Prop
  identificationResult : Prop
  causalEffectEstimand : Prop

structure InstrumentalVariableEvidence (I : InstrumentalVariablePackage) where
  exclusionRestrictionClosed : I.exclusionRestriction
  relevanceConditionClosed : I.relevanceCondition
  monotonicityAssumptionClosed : I.monotonicityAssumption
  identificationResultClosed : I.identificationResult
  causalEffectEstimandClosed : I.causalEffectEstimand

def InstrumentalVariableClosed (I : InstrumentalVariablePackage) : Prop :=
  I.exclusionRestriction ∧ I.relevanceCondition ∧
  I.monotonicityAssumption ∧ I.identificationResult ∧ I.causalEffectEstimand

theorem instrumental_variable_closed_from_evidence (I : InstrumentalVariablePackage)
    (E : InstrumentalVariableEvidence I) : InstrumentalVariableClosed I := by
  exact And.intro E.exclusionRestrictionClosed
    (And.intro E.relevanceConditionClosed
      (And.intro E.monotonicityAssumptionClosed
        (And.intro E.identificationResultClosed E.causalEffectEstimandClosed)))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
