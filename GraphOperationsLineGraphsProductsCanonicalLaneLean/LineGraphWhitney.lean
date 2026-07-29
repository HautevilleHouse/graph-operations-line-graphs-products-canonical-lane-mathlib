import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure WhitneyLineGraphIsomorphismPackage (G : GraphPackage) where
  originalGraph : G.vertexSet
  lineGraphAdjacency : Type u
  adjacencyPreserved : Prop
  edgeAdjacencyToVertexAdjacency : Prop
  isomorphismConstructed : Prop

structure WhitneyLineGraphIsomorphismEvidence {G : GraphPackage} (W : WhitneyLineGraphIsomorphismPackage G) where
  adjacencyPreservedClosed : W.adjacencyPreserved
  edgeAdjacencyToVertexAdjacencyClosed : W.edgeAdjacencyToVertexAdjacency
  isomorphismConstructedClosed : W.isomorphismConstructed

def WhitneyLineGraphIsomorphismClosed {G : GraphPackage} (W : WhitneyLineGraphIsomorphismPackage G) : Prop :=
  W.adjacencyPreserved ∧ W.edgeAdjacencyToVertexAdjacency ∧ W.isomorphismConstructed

theorem whitney_line_graph_isomorphism_closed_from_evidence
    {G : GraphPackage} (W : WhitneyLineGraphIsomorphismPackage G) (E : WhitneyLineGraphIsomorphismEvidence W) :
    WhitneyLineGraphIsomorphismClosed W := by
  exact And.intro E.adjacencyPreservedClosed
    (And.intro E.edgeAdjacencyToVertexAdjacencyClosed E.isomorphismConstructedClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse
