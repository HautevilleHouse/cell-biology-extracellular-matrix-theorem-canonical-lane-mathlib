import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

def ConstrainedECMClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ecm_endgame (A : AdmissibleClass) :
    ConstrainedECMClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse