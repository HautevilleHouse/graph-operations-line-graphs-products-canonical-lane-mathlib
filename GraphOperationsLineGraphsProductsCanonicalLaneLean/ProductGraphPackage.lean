import GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure ProductGraphPackage where
  factorA : GraphSpace
  factorB : GraphSpace
  productGraph : GraphSpace
  vertexProduct : Prop
  edgeProduct : Prop
  projectionMaps : Prop

structure ProductGraphEvidence (P : ProductGraphPackage) where
  vertexProductClosed : P.vertexProduct
  edgeProductClosed : P.edgeProduct
  projectionMapsClosed : P.projectionMaps

def ProductGraphClosed (P : ProductGraphPackage) : Prop :=
  P.vertexProduct ∧ P.edgeProduct ∧ P.projectionMaps

theorem product_graph_closed_from_evidence (P : ProductGraphPackage) (E : ProductGraphEvidence P) :
    ProductGraphClosed P := by
  exact And.intro E.vertexProductClosed
    (And.intro E.edgeProductClosed E.projectionMapsClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse