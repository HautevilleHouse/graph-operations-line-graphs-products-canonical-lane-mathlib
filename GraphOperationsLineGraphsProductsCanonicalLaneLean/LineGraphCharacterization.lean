import canonicalLaneMathlib.AdmissibleClass
import GraphOperationsLineGraphsProductsCanonicalLaneLean.GraphProductDefinitions

namespace HautevilleHouse
namespace GraphOperationsLineGraphsProductsCanonicalLaneLean

structure LineGraphCharacterization (L : LineGraph) where
  clawFreeCondition : Prop
  isomorphismClawFree : Prop
  characterizationClosed : Prop

structure LineGraphCharacterizationEvidence (L : LineGraph) (C : LineGraphCharacterization L) where
  clawFreeConditionClosed : C.clawFreeCondition
  isomorphismClawFreeClosed : C.isomorphismClawFree
  characterizationClosedClosed : C.characterizationClosed

def LineGraphCharacterizationClosed (L : LineGraph) (C : LineGraphCharacterization L) : Prop :=
  C.clawFreeCondition ∧ C.isomorphismClawFree ∧ C.characterizationClosed

theorem line_graph_characterization_closed_from_evidence (L : LineGraph) (C : LineGraphCharacterization L) (E : LineGraphCharacterizationEvidence L C) : LineGraphCharacterizationClosed L C := by
  exact And.intro E.clawFreeConditionClosed (And.intro E.isomorphismClawFreeClosed E.characterizationClosedClosed)

end GraphOperationsLineGraphsProductsCanonicalLaneLean
end HautevilleHouse