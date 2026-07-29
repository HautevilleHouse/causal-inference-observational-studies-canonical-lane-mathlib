import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesCanonicalLaneLean.CausalEstimand

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IdentifiabilityAssumptionsPackage where
  consistency : Prop
  positivity : Prop
  exchangeability : Prop
  noInterference : Prop

structure IdentifiabilityAssumptionsEvidence (A : IdentifiabilityAssumptionsPackage) where
  consistencyClosed : A.consistency
  positivityClosed : A.positivity
  exchangeabilityClosed : A.exchangeability
  noInterferenceClosed : A.noInterference

def IdentifiabilityAssumptionsClosed (A : IdentifiabilityAssumptionsPackage) : Prop :=
  A.consistency ∧ A.positivity ∧ A.exchangeability ∧ A.noInterference

theorem identifiability_assumptions_closed_from_evidence
    (A : IdentifiabilityAssumptionsPackage) (E : IdentifiabilityAssumptionsEvidence A) :
    IdentifiabilityAssumptionsClosed A := by
  exact And.intro E.consistencyClosed
    (And.intro E.positivityClosed
      (And.intro E.exchangeabilityClosed E.noInterferenceClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse