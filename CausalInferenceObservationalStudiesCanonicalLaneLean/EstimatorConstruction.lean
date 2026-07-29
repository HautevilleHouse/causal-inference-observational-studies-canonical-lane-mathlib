import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IPTWEstimatorPackage where
  propensityScoreModel : Type u
  weightComputation : Prop
  stabilizedWeights : Prop
  positivityEnforced : Prop

structure IPTWEstimatorEvidence (E : IPTWEstimatorPackage) where
  propensityScoreModelClosed : E.propensityScoreModel
  weightComputationClosed : E.weightComputation
  stabilizedWeightsClosed : E.stabilizedWeights
  positivityEnforcedClosed : E.positivityEnforced

def IPTWEstimatorClosed (E : IPTWEstimatorPackage) : Prop :=
  E.propensityScoreModel ∧ E.weightComputation ∧ E.stabilizedWeights ∧ E.positivityEnforced

theorem iptw_estimator_closed_from_evidence (E : IPTWEstimatorPackage) (Ev : IPTWEstimatorEvidence E) :
    IPTWEstimatorClosed E := by
  exact And.intro Ev.propensityScoreModelClosed (And.intro Ev.weightComputationClosed (And.intro Ev.stabilizedWeightsClosed Ev.positivityEnforcedClosed))

structure DoublyRobustEstimatorPackage where
  outcomeModel : Type u
  propensityModel : Type v
  doublyRobustProperty : Prop
  consistencyUnderOneModelCorrect : Prop

structure DoublyRobustEstimatorEvidence (D : DoublyRobustEstimatorPackage) where
  outcomeModelClosed : D.outcomeModel
  propensityModelClosed : D.propensityModel
  doublyRobustPropertyClosed : D.doublyRobustProperty
  consistencyUnderOneModelCorrectClosed : D.consistencyUnderOneModelCorrect

def DoublyRobustEstimatorClosed (D : DoublyRobustEstimatorPackage) : Prop :=
  D.outcomeModel ∧ D.propensityModel ∧ D.doublyRobustProperty ∧ D.consistencyUnderOneModelCorrect

theorem doubly_robust_estimator_closed_from_evidence (D : DoublyRobustEstimatorPackage) (Ev : DoublyRobustEstimatorEvidence D) :
    DoublyRobustEstimatorClosed D := by
  exact And.intro Ev.outcomeModelClosed (And.intro Ev.propensityModelClosed (And.intro Ev.doublyRobustPropertyClosed Ev.consistencyUnderOneModelCorrectClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse