import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IdentificationAssumptionsPackage where
  ignorability : Prop
  overlap : Prop
  noUnmeasuredConfounding : Prop
  positivity : Prop

structure IdentificationAssumptionsEvidence (A : IdentificationAssumptionsPackage) where
  ignorabilityClosed : A.ignorability
  overlapClosed : A.overlap
  noUnmeasuredConfoundingClosed : A.noUnmeasuredConfounding
  positivityClosed : A.positivity

def IdentificationAssumptionsClosed (A : IdentificationAssumptionsPackage) : Prop :=
  A.ignorability ∧ A.overlap ∧ A.noUnmeasuredConfounding ∧ A.positivity

theorem identification_assumptions_closed_from_evidence (A : IdentificationAssumptionsPackage) (E : IdentificationAssumptionsEvidence A) :
    IdentificationAssumptionsClosed A := by
  exact And.intro E.ignorabilityClosed (And.intro E.overlapClosed (And.intro E.noUnmeasuredConfoundingClosed E.positivityClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse