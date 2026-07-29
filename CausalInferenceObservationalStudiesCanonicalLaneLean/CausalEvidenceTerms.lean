import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesCanonicalLaneLean.IdentificationAssumptions

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure IdentificationEvidenceTerms {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) where
  unconfoundednessTerm : P.unconfoundedness
  positivityTerm : P.positivity
  consistencyTerm : P.consistency
  assumptionsClosed : IdentificationAssumptionsClosed P

def IdentificationAssumptionsPackage.evidenceTerms {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) (E : IdentificationAssumptionsEvidence P) :
    IdentificationEvidenceTerms P := {
  unconfoundednessTerm := E.unconfoundednessClosed
  positivityTerm := E.positivityClosed
  consistencyTerm := E.consistencyClosed
  assumptionsClosed := identification_assumptions_closed_from_evidence P E
}

structure EstimationEvidenceTerms {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) (Est : EstimationCertificate P) where
  estimatorConsistent : Est.estimatorConsistent
  asymptoticNormality : Est.asymptoticNormality
  estimationClosed : EstimationClosed Est

structure SensitivityEvidenceTerms {A : CausalAdmittedObject}
    (P : IdentificationAssumptionsPackage A) (S : SensitivityCertificate P) where
  biasControlled : S.biasControlled
  sensitivityClosed : SensitivityClosed S

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse