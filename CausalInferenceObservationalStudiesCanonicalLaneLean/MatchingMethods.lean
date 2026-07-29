import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure MatchingPackage where
  treatedUnits : Type u
  controlUnits : Type v
  covariates : Type w
  propensityScore : Prop
  matchingAlgorithm : Prop
  balanceCondition : Prop

structure MatchingEvidence (M : MatchingPackage) where
  propensityScoreClosed : M.propensityScore
  matchingAlgorithmClosed : M.matchingAlgorithm
  balanceConditionClosed : M.balanceCondition

def MatchingClosed (M : MatchingPackage) : Prop :=
  M.propensityScore ∧ M.matchingAlgorithm ∧ M.balanceCondition

theorem matching_closed_from_evidence (M : MatchingPackage) (E : MatchingEvidence M) : MatchingClosed M :=
  by
    exact And.intro E.propensityScoreClosed (And.intro E.matchingAlgorithmClosed E.balanceConditionClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse