import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure GraphOperationsPackage where
  vertexRemoval : Prop
  edgeRemoval : Prop
  edgeContraction : Prop
  vertexIdentification : Prop
  subgraphOperations : Prop

structure GraphOperationsEvidence (Ops : GraphOperationsPackage) where
  vertexRemovalClosed : Ops.vertexRemoval
  edgeRemovalClosed : Ops.edgeRemoval
  edgeContractionClosed : Ops.edgeContraction
  vertexIdentificationClosed : Ops.vertexIdentification
  subgraphOperationsClosed : Ops.subgraphOperations

def GraphOperationsClosed (Ops : GraphOperationsPackage) : Prop :=
  Ops.vertexRemoval ∧ Ops.edgeRemoval ∧ Ops.edgeContraction ∧ Ops.vertexIdentification ∧ Ops.subgraphOperations

theorem graph_operations_closed_from_evidence (Ops : GraphOperationsPackage) (E : GraphOperationsEvidence Ops) :
    GraphOperationsClosed Ops := by
  exact And.intro E.vertexRemovalClosed
    (And.intro E.edgeRemovalClosed
      (And.intro E.edgeContractionClosed
        (And.intro E.vertexIdentificationClosed E.subgraphOperationsClosed)))

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse