import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphOperationsLineGraphsProductsCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.GraphOperationsLineGraphsProductsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

def ConstrainedGraphOperationsClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_graph_operations_endgame (A : AdmissibleClass) :
    ConstrainedGraphOperationsClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse