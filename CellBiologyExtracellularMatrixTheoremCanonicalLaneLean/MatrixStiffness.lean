import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.IntegrinSignaling

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure MatrixStiffnessPackage {I : IntegrinSignalingPackage} where
  collagenCrosslinking : Prop
  lysylOxidaseActivity : Prop
  hyaluronicAcidConcentration : Prop
  elasticModulus : Prop
  tractionForceGeneration : Prop

structure MatrixStiffnessEvidence {I : IntegrinSignalingPackage}
    (M : MatrixStiffnessPackage I) where
  collagenCrosslinkingClosed : M.collagenCrosslinking
  lysylOxidaseActivityClosed : M.lysylOxidaseActivity
  hyaluronicAcidConcentrationClosed : M.hyaluronicAcidConcentration
  elasticModulusClosed : M.elasticModulus
  tractionForceGenerationClosed : M.tractionForceGeneration

def MatrixStiffnessClosed {I : IntegrinSignalingPackage}
    (M : MatrixStiffnessPackage I) : Prop :=
  M.collagenCrosslinking ∧ M.lysylOxidaseActivity ∧
  M.hyaluronicAcidConcentration ∧ M.elasticModulus ∧
  M.tractionForceGeneration

theorem matrix_stiffness_closed_from_evidence
    {I : IntegrinSignalingPackage} (M : MatrixStiffnessPackage I)
    (E : MatrixStiffnessEvidence M) : MatrixStiffnessClosed M := by
  exact And.intro E.collagenCrosslinkingClosed
    (And.intro E.lysylOxidaseActivityClosed
      (And.intro E.hyaluronicAcidConcentrationClosed
        (And.intro E.elasticModulusClosed
          E.tractionForceGenerationClosed)))

end HautevilleHouse.CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse