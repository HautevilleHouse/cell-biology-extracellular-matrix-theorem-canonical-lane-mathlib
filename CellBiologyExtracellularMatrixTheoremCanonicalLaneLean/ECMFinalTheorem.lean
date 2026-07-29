import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

def ConstrainedCellBiologyExtracellularMatrixClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_cell_biology_extracellular_matrix_endgame (A : AdmissibleClass) : ConstrainedCellBiologyExtracellularMatrixClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse