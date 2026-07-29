import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure MatrixDynamicsPackage where
  synthesisRates : List Float
  degradationRates : List Float
  bindingRates : List Float
  crosslinkingRates : List Float

default
  synthesisRates := [0.5, 0.4, 0.3, 0.2, 0.3, 0.1]
  degradationRates := [0.1, 0.2, 0.15, 0.05, 0.2, 0.25]
  bindingRates := [0.9, 0.7, 0.8, 0.6, 0.95, 0.85]
  crosslinkingRates := [0.2, 0.1, 0.15, 0.3, 0.05, 0.0]

structure MatrixDynamicsEvidence (D : MatrixDynamicsPackage) where
  synthesisRatesPositive : All (fun r => r > 0) D.synthesisRates
  degradationRatesPositive : All (fun r => r > 0) D.degradationRates
  bindingRatesPositive : All (fun r => r > 0) D.bindingRates
  crosslinkingRatesNonNegative : All (fun r => r ≥ 0) D.crosslinkingRates

def MatrixDynamicsClosed (D : MatrixDynamicsPackage) : Prop :=
  All (fun r => r > 0) D.synthesisRates ∧ All (fun r => r > 0) D.degradationRates ∧
  All (fun r => r > 0) D.bindingRates ∧ All (fun r => r ≥ 0) D.crosslinkingRates

theorem matrix_dynamics_closed_from_evidence (D : MatrixDynamicsPackage) (E : MatrixDynamicsEvidence D) : MatrixDynamicsClosed D := by
  exact And.intro E.synthesisRatesPositive (And.intro E.degradationRatesPositive (And.intro E.bindingRatesPositive E.crosslinkingRatesNonNegative))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse
