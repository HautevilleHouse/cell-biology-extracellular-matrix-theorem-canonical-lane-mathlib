import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.IntegrinSignaling

/-!
# Extracellular Matrix Remodeling Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMRemodelingPackage {I : IntegrinSignalingPackage} where
  matrixSynthesis : Prop
  matrixDegradation : Prop
  crosslinking : Prop
  growthFactorSequestration : Prop

structure ECMRemodelingEvidence {I : IntegrinSignalingPackage}
    (R : ECMRemodelingPackage I) where
  matrixSynthesisClosed : R.matrixSynthesis
  matrixDegradationClosed : R.matrixDegradation
  crosslinkingClosed : R.crosslinking
  growthFactorSequestrationClosed : R.growthFactorSequestration

def ECMRemodelingClosed {I : IntegrinSignalingPackage}
    (R : ECMRemodelingPackage I) : Prop :=
  R.matrixSynthesis ∧ R.matrixDegradation ∧ R.crosslinking ∧ R.growthFactorSequestration

theorem ecm_remodeling_closed_from_evidence {I : IntegrinSignalingPackage}
    (R : ECMRemodelingPackage I) (E : ECMRemodelingEvidence R) :
    ECMRemodelingClosed R := by
  exact And.intro E.matrixSynthesisClosed
    (And.intro E.matrixDegradationClosed
      (And.intro E.crosslinkingClosed E.growthFactorSequestrationClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse