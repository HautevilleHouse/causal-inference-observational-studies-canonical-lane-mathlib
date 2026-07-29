import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalIdentificationPackage where
  effectOfInterest : Prop
  identificationAssumptions : Prop
  estimator : Prop
  identificationResult : Prop
  sensitivityAnalysis : Prop

structure CausalIdentificationEvidence (C : CausalIdentificationPackage) where
  effectOfInterestClosed : C.effectOfInterest
  identificationAssumptionsClosed : C.identificationAssumptions
  estimatorClosed : C.estimator
  identificationResultClosed : C.identificationResult
  sensitivityAnalysisClosed : C.sensitivityAnalysis

def CausalIdentificationClosed (C : CausalIdentificationPackage) : Prop :=
  C.effectOfInterest ∧ C.identificationAssumptions ∧ C.estimator ∧ C.identificationResult ∧ C.sensitivityAnalysis

theorem causal_identification_closed_from_evidence (C : CausalIdentificationPackage) (E : CausalIdentificationEvidence C) : CausalIdentificationClosed C :=
  by
    exact And.intro E.effectOfInterestClosed (And.intro E.identificationAssumptionsClosed (And.intro E.estimatorClosed (And.intro E.identificationResultClosed E.sensitivityAnalysisClosed)))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse