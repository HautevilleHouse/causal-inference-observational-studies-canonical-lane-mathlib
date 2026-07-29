import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

structure CausalDAGPackage where
  nodes : Type u
  edges : Type v
  dagAxiom : Prop
  pairwiseIndependence : Prop
  markovCondition : Prop
  faithfulness : Prop

structure CausalDAGEvidence (D : CausalDAGPackage) where
  dagAxiomClosed : D.dagAxiom
  pairwiseIndependenceClosed : D.pairwiseIndependence
  markovConditionClosed : D.markovCondition
  faithfulnessClosed : D.faithfulness

def CausalDAGClosed (D : CausalDAGPackage) : Prop :=
  D.dagAxiom ∧ D.pairwiseIndependence ∧ D.markovCondition ∧ D.faithfulness

theorem causal_dag_closed_from_evidence (D : CausalDAGPackage) (E : CausalDAGEvidence D) :
    CausalDAGClosed D := by
  exact And.intro E.dagAxiomClosed
    (And.intro E.pairwiseIndependenceClosed
      (And.intro E.markovConditionClosed E.faithfulnessClosed))

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
