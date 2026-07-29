import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure InstrumentalVariablesPackage where
  instrument : Type u
  exclusionRestriction : Prop
  relevanceCondition : Prop
  monotonicity : Prop

def InstrumentalVariablesClosed (I : InstrumentalVariablesPackage) : Prop :=
  I.exclusionRestriction ∧ I.relevanceCondition ∧ I.monotonicity

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse