import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure DoCalculusPackage where
  causalGraph : Type u
  intervention : Type v
  ruleOne : Prop
  ruleTwo : Prop
  ruleThree : Prop
  identifiability : Prop

structure DoCalculusEvidence (D : DoCalculusPackage) where
  ruleOneClosed : D.ruleOne
  ruleTwoClosed : D.ruleTwo
  ruleThreeClosed : D.ruleThree
  identifiabilityClosed : D.identifiability

def DoCalculusClosed (D : DoCalculusPackage) : Prop :=
  D.ruleOne ∧ D.ruleTwo ∧ D.ruleThree ∧ D.identifiability

theorem do_calculus_closed_from_evidence (D : DoCalculusPackage)
    (E : DoCalculusEvidence D) : DoCalculusClosed D := by
  exact And.intro E.ruleOneClosed
    (And.intro E.ruleTwoClosed
      (And.intro E.ruleThreeClosed E.identifiabilityClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
