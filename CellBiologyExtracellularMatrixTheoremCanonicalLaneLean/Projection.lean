import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def ecmProjection : Projection ECMEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem ecm_projection_idempotent (x : ECMEndgameState) :
    ecmProjection.toFun (ecmProjection.toFun x) = ecmProjection.toFun x := by
  exact ecmProjection.idempotent x

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse