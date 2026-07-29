import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure LineGraphPackage (G : GraphPackage) where
  lineGraphAdjacency : Type u
  vertexSetEquiv : G.vertexSet ≃ lineGraphAdjacency
  adjacencyPreserved : Prop
  edgeMapInjective : Prop
  lineGraphConnectedIfOriginalConnected : Prop

structure LineGraphEvidence {G : GraphPackage} (L : LineGraphPackage G) where
  adjacencyPreservedClosed : L.adjacencyPreserved
  edgeMapInjectiveClosed : L.edgeMapInjective
  lineGraphConnectedIfOriginalConnectedClosed : L.lineGraphConnectedIfOriginalConnected

def LineGraphClosed {G : GraphPackage} (L : LineGraphPackage G) : Prop :=
  L.adjacencyPreserved ∧ L.edgeMapInjective ∧ L.lineGraphConnectedIfOriginalConnected

theorem line_graph_closed_from_evidence
    {G : GraphPackage} (L : LineGraphPackage G) (E : LineGraphEvidence L) :
    LineGraphClosed L := by
  exact And.intro E.adjacencyPreservedClosed
    (And.intro E.edgeMapInjectiveClosed E.lineGraphConnectedIfOriginalConnectedClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse
