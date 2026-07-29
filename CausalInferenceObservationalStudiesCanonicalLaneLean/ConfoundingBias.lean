import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure ConfoundingBiasPackage where
  treatment : Type u
  outcome : Type v
  confounders : Type w
  ignorabilityAssumption : Prop
  positivityAssumption : Prop
  backdoorCriterion : Prop

structure ConfoundingBiasEvidence (C : ConfoundingBiasPackage) where
  ignorabilityAssumptionClosed : C.ignorabilityAssumption
  positivityAssumptionClosed : C.positivityAssumption
  backdoorCriterionClosed : C.backdoorCriterion

def ConfoundingBiasClosed (C : ConfoundingBiasPackage) : Prop :=
  C.ignorabilityAssumption ∧ C.positivityAssumption ∧ C.backdoorCriterion

theorem confounding_bias_closed_from_evidence (C : ConfoundingBiasPackage) (E : ConfoundingBiasEvidence C) : ConfoundingBiasClosed C :=
  by
    exact And.intro E.ignorabilityAssumptionClosed (And.intro E.positivityAssumptionClosed E.backdoorCriterionClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse