import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProducts

structure VertexDeletionPackage (G : GraphAdmittedObject) where
  vertexToDelete : G.graph
  deletedGraph : Type u
  adjacencyDeleted : deletedGraph → deletedGraph → Prop
  deletionPreservesClosure : Prop

structure VertexDeletionEvidence {G : GraphAdmittedObject} (V : VertexDeletionPackage G) where
  deletionPreservesClosureClosed : V.deletionPreservesClosure

def VertexDeletionClosed {G : GraphAdmittedObject} (V : VertexDeletionPackage G) : Prop :=
  V.deletionPreservesClosure

theorem vertex_deletion_closed_from_evidence {G : GraphAdmittedObject}
    (V : VertexDeletionPackage G) (E : VertexDeletionEvidence V) :
    VertexDeletionClosed V := by
  exact E.deletionPreservesClosureClosed

end GraphOperationsLineGraphsProducts
end HautevilleHouse