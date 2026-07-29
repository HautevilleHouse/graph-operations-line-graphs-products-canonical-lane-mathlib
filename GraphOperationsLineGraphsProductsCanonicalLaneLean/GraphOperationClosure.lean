import GraphOperationsLineGraphsProductsCanonicalLaneLean.LineGraphPackage
import GraphOperationsLineGraphsProductsCanonicalLaneLean.ProductGraphPackage

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure GraphOperationClosurePackage where
  lineGraphPackage : LineGraphPackage
  productGraphPackage : ProductGraphPackage
  compositionConsistency : Prop
  decompositionPreservation : Prop
  closedUnderOperations : Prop

structure GraphOperationClosureEvidence (G : GraphOperationClosurePackage) where
  lineGraphClosed : LineGraphClosed G.lineGraphPackage
  productGraphClosed : ProductGraphClosed G.productGraphPackage
  compositionConsistencyClosed : G.compositionConsistency
  decompositionPreservationClosed : G.decompositionPreservation
  closedUnderOperationsClosed : G.closedUnderOperations

def GraphOperationClosureClosed (G : GraphOperationClosurePackage) : Prop :=
  LineGraphClosed G.lineGraphPackage ∧
  ProductGraphClosed G.productGraphPackage ∧
  G.compositionConsistency ∧
  G.decompositionPreservation ∧
  G.closedUnderOperations

theorem graph_operation_closure_closed_from_evidence
    (G : GraphOperationClosurePackage) (E : GraphOperationClosureEvidence G) :
    GraphOperationClosureClosed G := by
  exact And.intro E.lineGraphClosed
    (And.intro E.productGraphClosed
      (And.intro E.compositionConsistencyClosed
        (And.intro E.decompositionPreservationClosed E.closedUnderOperationsClosed)))

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse