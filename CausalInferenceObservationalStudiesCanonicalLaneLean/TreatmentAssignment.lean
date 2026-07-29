import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure TreatmentAssignmentPackage where
  unconfoundedness : Prop
  overlap : Prop
  exclusionRestriction : Prop

structure TreatmentAssignmentEvidence (T : TreatmentAssignmentPackage) where
  unconfoundednessClosed : T.unconfoundedness
  overlapClosed : T.overlap
  exclusionRestrictionClosed : T.exclusionRestriction

def TreatmentAssignmentClosed (T : TreatmentAssignmentPackage) : Prop :=
  T.unconfoundedness ∧ T.overlap ∧ T.exclusionRestriction

theorem treatment_assignment_closed_from_evidence (T : TreatmentAssignmentPackage) (E : TreatmentAssignmentEvidence T) :
    TreatmentAssignmentClosed T := by
  exact And.intro E.unconfoundednessClosed (And.intro E.overlapClosed E.exclusionRestrictionClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse