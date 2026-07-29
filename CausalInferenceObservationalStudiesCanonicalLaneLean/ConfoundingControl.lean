import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure ConfoundingControlPackage where
  backdoorCriterion : Prop
  frontdoorCriterion : Prop
  propensityScoreStratification : Prop

structure ConfoundingControlEvidence (C : ConfoundingControlPackage) where
  backdoorCriterionClosed : C.backdoorCriterion
  frontdoorCriterionClosed : C.frontdoorCriterion
  propensityScoreStratificationClosed : C.propensityScoreStratification

def ConfoundingControlClosed (C : ConfoundingControlPackage) : Prop :=
  C.backdoorCriterion ∧ C.frontdoorCriterion ∧ C.propensityScoreStratification

theorem confounding_control_closed_from_evidence (C : ConfoundingControlPackage) (E : ConfoundingControlEvidence C) :
    ConfoundingControlClosed C := by
  exact And.intro E.backdoorCriterionClosed (And.intro E.frontdoorCriterionClosed E.propensityScoreStratificationClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse