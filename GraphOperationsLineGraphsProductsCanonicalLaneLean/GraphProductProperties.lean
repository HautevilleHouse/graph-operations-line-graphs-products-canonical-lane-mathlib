import canonicalLaneMathlib.AdmissibleClass
import GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure GraphProductPropertiesPackage (G H : Graph) (P : GraphProduct G H) where
  productTypeCorrect : Prop
  edgeDefinitionConsistent : Prop
  productPreservesProperties : Prop
  lineGraphOfProduct : Prop

structure GraphProductPropertiesEvidence {G H : Graph} {P : GraphProduct G H}
    (Q : GraphProductPropertiesPackage G H P) where
  productTypeCorrectClosed : Q.productTypeCorrect
  edgeDefinitionConsistentClosed : Q.edgeDefinitionConsistent
  productPreservesPropertiesClosed : Q.productPreservesProperties
  lineGraphOfProductClosed : Q.lineGraphOfProduct

def GraphProductPropertiesClosed {G H : Graph} {P : GraphProduct G H}
    (Q : GraphProductPropertiesPackage G H P) : Prop :=
  Q.productTypeCorrect ∧ Q.edgeDefinitionConsistent ∧
  Q.productPreservesProperties ∧ Q.lineGraphOfProduct

theorem graph_product_properties_closed_from_evidence
    {G H : Graph} {P : GraphProduct G H}
    (Q : GraphProductPropertiesPackage G H P)
    (E : GraphProductPropertiesEvidence Q) : GraphProductPropertiesClosed Q :=
  And.intro E.productTypeCorrectClosed
    (And.intro E.edgeDefinitionConsistentClosed
      (And.intro E.productPreservesPropertiesClosed E.lineGraphOfProductClosed))

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse