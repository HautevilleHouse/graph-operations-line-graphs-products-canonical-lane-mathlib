import canonicalLaneMathlib.AdmissibleClass
import GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure LineGraphPropertiesPackage (G : Graph) (L : LineGraph G) where
  lineGraphEdgesCorrespond : Prop
  adjacencyPreservation : Prop
  lineGraphIsSimple : Prop
  lineGraphIsConnected : Prop

structure LineGraphPropertiesEvidence {G : Graph} {L : LineGraph G}
    (P : LineGraphPropertiesPackage G L) where
  lineGraphEdgesCorrespondClosed : P.lineGraphEdgesCorrespond
  adjacencyPreservationClosed : P.adjacencyPreservation
  lineGraphIsSimpleClosed : P.lineGraphIsSimple
  lineGraphIsConnectedClosed : P.lineGraphIsConnected

def LineGraphPropertiesClosed {G : Graph} {L : LineGraph G}
    (P : LineGraphPropertiesPackage G L) : Prop :=
  P.lineGraphEdgesCorrespond ∧ P.adjacencyPreservation ∧
  P.lineGraphIsSimple ∧ P.lineGraphIsConnected

theorem line_graph_properties_closed_from_evidence
    {G : Graph} {L : LineGraph G} (P : LineGraphPropertiesPackage G L)
    (E : LineGraphPropertiesEvidence P) : LineGraphPropertiesClosed P :=
  And.intro E.lineGraphEdgesCorrespondClosed
    (And.intro E.adjacencyPreservationClosed
      (And.intro E.lineGraphIsSimpleClosed E.lineGraphIsConnectedClosed))

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse