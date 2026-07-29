import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure PotentialOutcomesPackage where
  treatment : Type u
  outcome : Type v
  unit : Type w
  potentialOutcomeAssignment : unit -> treatment -> outcome
  consistency : Prop
  noInterference : Prop
  positivity : Prop

structure PotentialOutcomesEvidence (P : PotentialOutcomesPackage) where
  consistencyClosed : P.consistency
  noInterferenceClosed : P.noInterference
  positivityClosed : P.positivity

def PotentialOutcomesClosed (P : PotentialOutcomesPackage) : Prop :=
  P.consistency ∧ P.noInterference ∧ P.positivity

theorem potential_outcomes_closed_from_evidence (P : PotentialOutcomesPackage) (E : PotentialOutcomesEvidence P) :
    PotentialOutcomesClosed P := by
  exact And.intro E.consistencyClosed (And.intro E.noInterferenceClosed E.positivityClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse