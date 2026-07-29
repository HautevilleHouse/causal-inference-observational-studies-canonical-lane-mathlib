import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure TreatmentEffectPackage where
  outcome : Type u
  treatment : Type v
  potentialOutcomes : outcome → treatment → outcome
  causalEffect : Prop
  consistencyAssumption : Prop

structure TreatmentEffectEvidence (P : TreatmentEffectPackage) where
  causalEffectClosed : P.causalEffect
  consistencyAssumptionClosed : P.consistencyAssumption

def TreatmentEffectClosed (P : TreatmentEffectPackage) : Prop :=
  P.causalEffect ∧ P.consistencyAssumption

theorem treatment_effect_closed_from_evidence (P : TreatmentEffectPackage) (E : TreatmentEffectEvidence P) : TreatmentEffectClosed P :=
  by
    exact And.intro E.causalEffectClosed E.consistencyAssumptionClosed

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse