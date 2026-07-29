import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure PropensityScorePackage where
  treatmentAssignment : Type u
  propensityScore : Type v
  balancingProperty : Prop
  stratificationScheme : Prop
  overlapAssumption : Prop
  consistencyAssumption : Prop

structure PropensityScoreEvidence (P : PropensityScorePackage) where
  balancingPropertyClosed : P.balancingProperty
  stratificationSchemeClosed : P.stratificationScheme
  overlapAssumptionClosed : P.overlapAssumption
  consistencyAssumptionClosed : P.consistencyAssumption

def PropensityScoreClosed (P : PropensityScorePackage) : Prop :=
  P.balancingProperty ∧ P.stratificationScheme ∧
  P.overlapAssumption ∧ P.consistencyAssumption

theorem propensity_score_closed_from_evidence (P : PropensityScorePackage)
    (E : PropensityScoreEvidence P) : PropensityScoreClosed P := by
  exact And.intro E.balancingPropertyClosed
    (And.intro E.stratificationSchemeClosed
      (And.intro E.overlapAssumptionClosed E.consistencyAssumptionClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
