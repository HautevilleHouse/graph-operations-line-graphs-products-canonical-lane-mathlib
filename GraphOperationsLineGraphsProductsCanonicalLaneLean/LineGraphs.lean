import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure LineGraphPackage where
  originalGraph : Type u
  lineGraph : Type u
  lineGraphConstruction : Prop
  adjacencyPreserved : Prop
  edgeToVertexMapping : Prop

structure LineGraphEvidence (L : LineGraphPackage) where
  lineGraphConstructionClosed : L.lineGraphConstruction
  adjacencyPreservedClosed : L.adjacencyPreserved
  edgeToVertexMappingClosed : L.edgeToVertexMapping

def LineGraphClosed (L : LineGraphPackage) : Prop :=
  L.lineGraphConstruction ∧ L.adjacencyPreserved ∧ L.edgeToVertexMapping

theorem line_graph_closed_from_evidence (L : LineGraphPackage) (E : LineGraphEvidence L) :
    LineGraphClosed L := by
  exact And.intro E.lineGraphConstructionClosed (And.intro E.adjacencyPreservedClosed E.edgeToVertexMappingClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse