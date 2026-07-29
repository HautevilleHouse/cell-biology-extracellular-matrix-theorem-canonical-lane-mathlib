import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.SignalTransduction

/-!
# Matrix Remodeling Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure MatrixRemodelingPackage {E : ExtracellularMatrixSystem}
    {D : CellAdhesionDynamicsPackage E} {S : SignalTransductionPackage D} where
  ecmSynthesis : Prop
  ecmDegradation : Prop
  crosslinking : Prop
  stiffnessFeedback : Prop
  matrixTurnover : Prop

structure MatrixRemodelingEvidence {E : ExtracellularMatrixSystem}
    {D : CellAdhesionDynamicsPackage E} {S : SignalTransductionPackage D}
    (M : MatrixRemodelingPackage S) where
  ecmSynthesisClosed : M.ecmSynthesis
  ecmDegradationClosed : M.ecmDegradation
  crosslinkingClosed : M.crosslinking
  stiffnessFeedbackClosed : M.stiffnessFeedback
  matrixTurnoverClosed : M.matrixTurnover

def MatrixRemodelingClosed {E : ExtracellularMatrixSystem}
    {D : CellAdhesionDynamicsPackage E} {S : SignalTransductionPackage D}
    (M : MatrixRemodelingPackage S) : Prop :=
  M.ecmSynthesis ∧ M.ecmDegradation ∧ M.crosslinking ∧ M.stiffnessFeedback ∧ M.matrixTurnover

theorem matrix_remodeling_closed_from_evidence
    {E : ExtracellularMatrixSystem} {D : CellAdhesionDynamicsPackage E}
    {S : SignalTransductionPackage D} (M : MatrixRemodelingPackage S)
    (Ev : MatrixRemodelingEvidence M) : MatrixRemodelingClosed M := by
  exact And.intro Ev.ecmSynthesisClosed
    (And.intro Ev.ecmDegradationClosed
      (And.intro Ev.crosslinkingClosed
        (And.intro Ev.stiffnessFeedbackClosed Ev.matrixTurnoverClosed)))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse
