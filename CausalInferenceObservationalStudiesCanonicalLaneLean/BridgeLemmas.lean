import CausalInferenceObservationalStudiesCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CausalInferenceObservationalStudiesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  CausalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CausalInferenceObservationalStudiesCanonicalLaneLean
end HautevilleHouse
