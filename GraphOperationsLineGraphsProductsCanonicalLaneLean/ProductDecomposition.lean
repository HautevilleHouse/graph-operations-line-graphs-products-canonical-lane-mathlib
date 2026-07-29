import canonicalLaneMathlib.AdmissibleClass
import GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphProductDefinitions

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure ProductDecomposition (G : Graph) (H : Graph) (P : GraphProduct G H) where
  factorRecognition : Prop
  uniqueRepresentation : Prop
  decompositionClosed : Prop

structure ProductDecompositionEvidence (G : Graph) (H : Graph) (P : GraphProduct G H) (D : ProductDecomposition G H P) where
  factorRecognitionClosed : D.factorRecognition
  uniqueRepresentationClosed : D.uniqueRepresentation
  decompositionClosedClosed : D.decompositionClosed

def ProductDecompositionClosed (G : Graph) (H : Graph) (P : GraphProduct G H) (D : ProductDecomposition G H P) : Prop :=
  D.factorRecognition ∧ D.uniqueRepresentation ∧ D.decompositionClosed

theorem product_decomposition_closed_from_evidence (G : Graph) (H : Graph) (P : GraphProduct G H) (D : ProductDecomposition G H P) (E : ProductDecompositionEvidence G H P D) : ProductDecompositionClosed G H P D := by
  exact And.intro E.factorRecognitionClosed (And.intro E.uniqueRepresentationClosed E.decompositionClosedClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse