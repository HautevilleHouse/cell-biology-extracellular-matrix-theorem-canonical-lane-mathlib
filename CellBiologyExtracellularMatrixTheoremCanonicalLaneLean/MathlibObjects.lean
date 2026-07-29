import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ECMCell where
  carrier : Type
  topology : TopologicalSpace carrier

structure ECMAdmittedObject where
  cell : ECMCell
  extracellularMatrixAssembled : Prop
  integrinBindingActive : Prop
  matrixModel : Type
  matrixTopology : TopologicalSpace matrixModel
  adhesionComplexFormed : Prop
  conclusion : adhesionComplexFormed

structure ECMEndgameState where
  object : ECMAdmittedObject

def ECMWitnessClosed (O : ECMAdmittedObject) : Prop :=
  O.adhesionComplexFormed

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse