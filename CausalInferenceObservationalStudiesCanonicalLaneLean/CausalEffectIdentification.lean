import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalEffectIdentificationPackage where
  ateIdentification : Prop
  attIdentification : Prop
  cdeIdentification : Prop
  positivityCondition : Prop
  ignorabilityCondition : Prop

structure CausalEffectIdentificationEvidence (C : CausalEffectIdentificationPackage) where
  ateIdentificationClosed : C.ateIdentification
  attIdentificationClosed : C.attIdentification
  cdeIdentificationClosed : C.cdeIdentification
  positivityConditionClosed : C.positivityCondition
  ignorabilityConditionClosed : C.ignorabilityCondition

def CausalEffectIdentificationClosed (C : CausalEffectIdentificationPackage) : Prop :=
  C.ateIdentification ∧ C.attIdentification ∧ C.cdeIdentification ∧ C.positivityCondition ∧ C.ignorabilityCondition

theorem causal_effect_identification_closed_from_evidence (C : CausalEffectIdentificationPackage) (E : CausalEffectIdentificationEvidence C) :
    CausalEffectIdentificationClosed C := by
  exact And.intro E.ateIdentificationClosed (And.intro E.attIdentificationClosed (And.intro E.cdeIdentificationClosed (And.intro E.positivityConditionClosed E.ignorabilityConditionClosed)))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse