import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalStructurePackage where
  treatmentAssignment : Type u
  outcomeVariable : Type v
  confounders : Type w
  dag : DirectedAcyclicGraph treatmentAssignment outcomeVariable confounders
  identifiabilityAssumptions : Prop

def CausalStructureClosed (C : CausalStructurePackage) : Prop :=
  C.identifiabilityAssumptions

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse