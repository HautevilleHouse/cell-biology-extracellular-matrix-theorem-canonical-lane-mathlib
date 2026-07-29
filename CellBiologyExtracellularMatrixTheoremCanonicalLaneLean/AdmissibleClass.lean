import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : ECMAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ECMWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse