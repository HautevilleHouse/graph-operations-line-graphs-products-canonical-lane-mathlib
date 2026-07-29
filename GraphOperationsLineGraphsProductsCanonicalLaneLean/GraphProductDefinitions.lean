import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure Graph where
  Vertices : Type u
  Edges : Vertices -> Vertices -> Prop

structure LineGraph (G : Graph) where
  original : G
  lineVertices : Type v
  adjacency : lineVertices -> lineVertices -> Prop
  lineStructure : Prop

structure GraphProduct (G H : Graph) where
  productVertices : Type w
  projectionLeft : productVertices -> G.Vertices
  projectionRight : productVertices -> H.Vertices
  productEdges : productVertices -> productVertices -> Prop
  productConsistency : Prop

def LineGraphClosed (L : LineGraph) : Prop :=
  L.lineStructure

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse