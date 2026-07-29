import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IdentificationPackage where
  exchangeability : Prop
  positivity : Prop
  consistency : Prop
  noUnmeasuredConfounding : Prop

structure IdentificationEvidence (I : IdentificationPackage) where
  exchangeabilityClosed : I.exchangeability
  positivityClosed : I.positivity
  consistencyClosed : I.consistency
  noUnmeasuredConfoundingClosed : I.noUnmeasuredConfounding

def IdentificationClosed (I : IdentificationPackage) : Prop :=
  I.exchangeability ∧ I.positivity ∧ I.consistency ∧ I.noUnmeasuredConfounding

theorem identification_closed_from_evidence (I : IdentificationPackage)
    (E : IdentificationEvidence I) : IdentificationClosed I := by
  exact And.intro E.exchangeabilityClosed
    (And.intro E.positivityClosed
      (And.intro E.consistencyClosed E.noUnmeasuredConfoundingClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse