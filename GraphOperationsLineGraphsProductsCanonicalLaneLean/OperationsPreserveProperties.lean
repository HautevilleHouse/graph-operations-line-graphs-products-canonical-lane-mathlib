import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphOperations
import HautevilleHouse.GraphOperationsLineGraphsProductsCanonicalLaneLean.LineGraphs
import HautevilleHouse.GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphProducts

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure OperationsPreservePropertiesPackage where
  connectivityClosed : Prop
  bipartitenessClosed : Prop
  planarityClosed : Prop

structure OperationsPreservePropertiesEvidence (O : OperationsPreservePropertiesPackage) where
  connectivityClosedTerm : O.connectivityClosed
  bipartitenessClosedTerm : O.bipartitenessClosed
  planarityClosedTerm : O.planarityClosed

def OperationsPreservePropertiesClosed (O : OperationsPreservePropertiesPackage) : Prop :=
  O.connectivityClosed ∧ O.bipartitenessClosed ∧ O.planarityClosed

theorem operations_preserve_properties_closed_from_evidence (O : OperationsPreservePropertiesPackage) (E : OperationsPreservePropertiesEvidence O) :
    OperationsPreservePropertiesClosed O := by
  exact And.intro E.connectivityClosedTerm (And.intro E.bipartitenessClosedTerm E.planarityClosedTerm)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse