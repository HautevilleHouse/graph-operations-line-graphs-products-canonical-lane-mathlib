import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure GraphProductsPackage where
  cartesianProduct : Prop
  tensorProduct : Prop
  strongProduct : Prop
  lexicographicProduct : Prop

structure GraphProductsEvidence (P : GraphProductsPackage) where
  cartesianProductClosed : P.cartesianProduct
  tensorProductClosed : P.tensorProduct
  strongProductClosed : P.strongProduct
  lexicographicProductClosed : P.lexicographicProduct

def GraphProductsClosed (P : GraphProductsPackage) : Prop :=
  P.cartesianProduct ∧ P.tensorProduct ∧ P.strongProduct ∧ P.lexicographicProduct

theorem graph_products_closed_from_evidence (P : GraphProductsPackage) (E : GraphProductsEvidence P) :
    GraphProductsClosed P := by
  exact And.intro E.cartesianProductClosed (And.intro E.tensorProductClosed (And.intro E.strongProductClosed E.lexicographicProductClosed))

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse