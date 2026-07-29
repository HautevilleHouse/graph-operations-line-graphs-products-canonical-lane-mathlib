import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure GraphProductPackage (G H : GraphPackage) where
  productVertexSet : Type u
  vertexBijection : G.vertexSet × H.vertexSet ≃ productVertexSet
  adjacencyDefined : Prop
  strongProductAdjacency : Prop
  categoricalProductUniversal : Prop

structure GraphProductEvidence {G H : GraphPackage} (P : GraphProductPackage G H) where
  adjacencyDefinedClosed : P.adjacencyDefined
  strongProductAdjacencyClosed : P.strongProductAdjacency
  categoricalProductUniversalClosed : P.categoricalProductUniversal

def GraphProductClosed {G H : GraphPackage} (P : GraphProductPackage G H) : Prop :=
  P.adjacencyDefined ∧ P.strongProductAdjacency ∧ P.categoricalProductUniversal

theorem graph_product_closed_from_evidence
    {G H : GraphPackage} (P : GraphProductPackage G H) (E : GraphProductEvidence P) :
    GraphProductClosed P := by
  exact And.intro E.adjacencyDefinedClosed
    (And.intro E.strongProductAdjacencyClosed E.categoricalProductUniversalClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse
