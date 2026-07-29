import GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphObjects

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure LineGraphPackage where
  originalGraph : GraphSpace
  lineGraph : GraphSpace
  incidenceBijection : Prop
  connectivityPreservation : Prop
  edgeProductStructure : Prop

structure LineGraphEvidence (L : LineGraphPackage) where
  incidenceBijectionClosed : L.incidenceBijection
  connectivityPreservationClosed : L.connectivityPreservation
  edgeProductStructureClosed : L.edgeProductStructure

def LineGraphClosed (L : LineGraphPackage) : Prop :=
  L.incidenceBijection ∧ L.connectivityPreservation ∧ L.edgeProductStructure

theorem line_graph_closed_from_evidence (L : LineGraphPackage) (E : LineGraphEvidence L) :
    LineGraphClosed L := by
  exact And.intro E.incidenceBijectionClosed
    (And.intro E.connectivityPreservationClosed E.edgeProductStructureClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse