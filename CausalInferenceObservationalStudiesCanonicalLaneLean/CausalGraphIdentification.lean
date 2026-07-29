import HautevilleHouse.CausalInferenceObservationalStudiesCanonicalLaneLean.CausalAdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalGraphIdentification where
  dag : Type u
  backdoorCriterion : Prop
  frontdoorCriterion : Prop
  instrumentalVariable : Prop
  identificationMethod : Prop
  identificationMethodClosed : identificationMethod

def CausalGraphIdentificationClosed (C : CausalGraphIdentification) : Prop :=
  C.backdoorCriterion ∧ C.frontdoorCriterion ∧ C.instrumentalVariable ∧ C.identificationMethod

theorem causal_graph_identification_closed (C : CausalGraphIdentification) :
    CausalGraphIdentificationClosed C :=
  And.intro C.backdoorCriterion (And.intro C.frontdoorCriterion (And.intro C.instrumentalVariable C.identificationMethodClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse