import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure ConfounderControlPackage where
  observedCovariates : Type u
  unobservedConfounders : Prop
  measuredConfoundersAccounted : Prop
  IVInstrument : Prop
  positivityAssumption : Prop
  ignorabilityAssumption : Prop

structure ConfounderControlEvidence (C : ConfounderControlPackage) where
  measuredConfoundersAccountedClosed : C.measuredConfoundersAccounted
  positivityAssumptionClosed : C.positivityAssumption
  ignorabilityAssumptionClosed : C.ignorabilityAssumption

def ConfounderControlClosed (C : ConfounderControlPackage) : Prop :=
  C.measuredConfoundersAccounted ∧ C.positivityAssumption ∧ C.ignorabilityAssumption

theorem confounder_control_closed_from_evidence (C : ConfounderControlPackage)
    (E : ConfounderControlEvidence C) : ConfounderControlClosed C := by
  exact And.intro E.measuredConfoundersAccountedClosed
    (And.intro E.positivityAssumptionClosed E.ignorabilityAssumptionClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
