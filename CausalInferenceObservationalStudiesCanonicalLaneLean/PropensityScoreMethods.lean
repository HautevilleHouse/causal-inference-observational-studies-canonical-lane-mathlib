import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure PropensityScorePackage where
  propensityModel : Prop
  overlapSatisfied : Prop
  balanceAchieved : Prop
  ateEstimation : Prop

structure PropensityScoreEvidence (P : PropensityScorePackage) where
  propensityModelClosed : P.propensityModel
  overlapSatisfiedClosed : P.overlapSatisfied
  balanceAchievedClosed : P.balanceAchieved
  ateEstimationClosed : P.ateEstimation

def PropensityScoreClosed (P : PropensityScorePackage) : Prop :=
  P.propensityModel ∧ P.overlapSatisfied ∧ P.balanceAchieved ∧ P.ateEstimation

theorem propensity_score_closed_from_evidence (P : PropensityScorePackage)
    (E : PropensityScoreEvidence P) : PropensityScoreClosed P := by
  exact And.intro E.propensityModelClosed
    (And.intro E.overlapSatisfiedClosed
      (And.intro E.balanceAchievedClosed E.ateEstimationClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse