import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure MechanicalFeedbackPackage where
  matrixStiffness : Float
  cellContractility : Float
  integrinRecruitment : Float
  focalAdhesionSize : Float
  yapTazTranslocation : Float

default
  matrixStiffness := 1.0
  cellContractility := 0.5
  integrinRecruitment := 0.8
  focalAdhesionSize := 0.6
  yapTazTranslocation := 0.7

structure MechanicalFeedbackEvidence (M : MechanicalFeedbackPackage) where
  matrixStiffnessPositive : M.matrixStiffness > 0
  cellContractilityPositive : M.cellContractility > 0
  integrinRecruitmentPositive : M.integrinRecruitment > 0
  focalAdhesionSizePositive : M.focalAdhesionSize > 0
  yapTazTranslocationPositive : M.yapTazTranslocation > 0

def MechanicalFeedbackClosed (M : MechanicalFeedbackPackage) : Prop :=
  M.matrixStiffness > 0 ∧ M.cellContractility > 0 ∧ M.integrinRecruitment > 0 ∧
  M.focalAdhesionSize > 0 ∧ M.yapTazTranslocation > 0

theorem mechanical_feedback_closed_from_evidence (M : MechanicalFeedbackPackage) (E : MechanicalFeedbackEvidence M) : MechanicalFeedbackClosed M := by
  exact And.intro E.matrixStiffnessPositive (And.intro E.cellContractilityPositive (And.intro E.integrinRecruitmentPositive (And.intro E.focalAdhesionSizePositive E.yapTazTranslocationPositive)))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse
