import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure GraphSpace where
  carrier : Type
  vertexSet : carrier → Type
  edgeRelation : carrier → carrier → Prop

structure GraphAdmittedObject where
  space : GraphSpace
  simpleGraph : Prop
  lineGraphProduct : Prop
  productGraph : Prop
  conclusion : simpleGraph ∧ lineGraphProduct ∧ productGraph

structure GraphEndgameState where
  object : GraphAdmittedObject

def GraphWitnessClosed (O : GraphAdmittedObject) : Prop :=
  O.simpleGraph ∧ O.lineGraphProduct ∧ O.productGraph

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse