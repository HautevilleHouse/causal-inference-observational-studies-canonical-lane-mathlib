import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesCanonicalLaneLean.CausalEvidenceTerms

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IdentificationCertificate {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) where
  identificationIdentified : Prop
  identificationIdentifiedClosed : identificationIdentified
  identificationEvidence : IdentificationAssumptionsEvidence P

def IdentificationCertificateClosed {A : CausalAdmittedObject}
    {P : IdentificationAssumptionsPackage A} (C : IdentificationCertificate P) : Prop :=
  C.identificationIdentified ∧ IdentificationAssumptionsClosed P

theorem identification_certificate_closed {A : CausalAdmittedObject}
    {P : IdentificationAssumptionsPackage A} (C : IdentificationCertificate P) :
    IdentificationCertificateClosed C := by
  exact And.intro C.identificationIdentifiedClosed
    (identification_assumptions_closed_from_evidence P C.identificationEvidence)

structure EstimationCertificate {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) where
  estimatorDefined : Prop
  estimatorConsistent : Prop
  asymptoticNormality : Prop
  estimatorDefinedClosed : estimatorDefined
  estimatorConsistentClosed : estimatorConsistent
  asymptoticNormalityClosed : asymptoticNormality
  estimationEvidence : IdentificationAssumptionsEvidence P

def EstimationClosed {A : CausalAdmittedObject}
    {P : IdentificationAssumptionsPackage A} (E : EstimationCertificate P) : Prop :=
  E.estimatorConsistent ∧ E.asymptoticNormality

theorem estimation_certificate_closed {A : CausalAdmittedObject}
    {P : IdentificationAssumptionsPackage A} (E : EstimationCertificate P) (h : IdentificationAssumptionsClosed P) :
    EstimationClosed E := by
  exact And.intro E.estimatorConsistentClosed E.asymptoticNormalityClosed

structure SensitivityCertificate {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) where
  biasControlled : Prop
  biasControlledClosed : biasControlled
  sensitivityEvidence : IdentificationAssumptionsEvidence P

def SensitivityClosed {A : CausalAdmittedObject}
    {P : IdentificationAssumptionsPackage A} (S : SensitivityCertificate P) : Prop :=
  S.biasControlled

theorem sensitivity_certificate_closed {A : CausalAdmittedObject}
    {P : IdentificationAssumptionsPackage A} (S : SensitivityCertificate P) (h : IdentificationAssumptionsClosed P) :
    SensitivityClosed S := by
  exact S.biasControlledClosed

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse