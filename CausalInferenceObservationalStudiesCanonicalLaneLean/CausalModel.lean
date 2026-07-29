import canonicalLaneMathlib.AdmissibleClass
import CausalInferenceObservationalStudiesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalModelPackage where
  structuralEquations : Type u
  directedAcyclicGraph : Prop
  identifiabilityConditions : Prop
  consistencyAssumption : Prop

structure CausalModelEvidence (P : CausalModelPackage) where
  directedAcyclicGraphClosed : P.directedAcyclicGraph
  identifiabilityConditionsClosed : P.identifiabilityConditions
  consistencyAssumptionClosed : P.consistencyAssumption

def CausalModelClosed (P : CausalModelPackage) : Prop :=
  P.directedAcyclicGraph ∧ P.identifiabilityConditions ∧ P.consistencyAssumption

theorem causal_model_closed_from_evidence (P : CausalModelPackage) (E : CausalModelEvidence P) :
    CausalModelClosed P := by
  exact And.intro E.directedAcyclicGraphClosed
    (And.intro E.identifiabilityConditionsClosed E.consistencyAssumptionClosed)

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse