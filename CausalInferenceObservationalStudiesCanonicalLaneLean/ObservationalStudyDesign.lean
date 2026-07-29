import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure ObservationalStudyDesignPackage where
  studyPopulation : Type u
  treatmentAssignmentMechanism : Prop
  measurementProcedure : Prop
  selectionBiasAddressed : Prop
  confoundingControl : Prop

structure ObservationalStudyDesignEvidence (D : ObservationalStudyDesignPackage) where
  treatmentAssignmentMechanismClosed : D.treatmentAssignmentMechanism
  measurementProcedureClosed : D.measurementProcedure
  selectionBiasAddressedClosed : D.selectionBiasAddressed
  confoundingControlClosed : D.confoundingControl

def ObservationalStudyDesignClosed (D : ObservationalStudyDesignPackage) : Prop :=
  D.treatmentAssignmentMechanism ∧ D.measurementProcedure ∧ D.selectionBiasAddressed ∧ D.confoundingControl

theorem observational_study_design_closed_from_evidence (D : ObservationalStudyDesignPackage) (E : ObservationalStudyDesignEvidence D) :
    ObservationalStudyDesignClosed D := by
  exact And.intro E.treatmentAssignmentMechanismClosed (And.intro E.measurementProcedureClosed (And.intro E.selectionBiasAddressedClosed E.confoundingControlClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse