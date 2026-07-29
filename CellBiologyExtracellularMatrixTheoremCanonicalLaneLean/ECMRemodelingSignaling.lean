import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMRemodelingPackage where
  mmpSecretion : Prop
  timpInhibition : Prop
  collagenCrosslinking : Prop
  matrixDegradationRate : Prop

structure ECMRemodelingEvidence (P : ECMRemodelingPackage) where
  mmpSecretionClosed : P.mmpSecretion
  timpInhibitionClosed : P.timpInhibition
  collagenCrosslinkingClosed : P.collagenCrosslinking
  matrixDegradationRateClosed : P.matrixDegradationRate

def ECMRemodelingClosed (P : ECMRemodelingPackage) : Prop :=
  P.mmpSecretion ∧ P.timpInhibition ∧
  P.collagenCrosslinking ∧ P.matrixDegradationRate

theorem ecm_remodeling_closed_from_evidence (P : ECMRemodelingPackage)
    (E : ECMRemodelingEvidence P) : ECMRemodelingClosed P := by
  exact And.intro E.mmpSecretionClosed
    (And.intro E.timpInhibitionClosed
      (And.intro E.collagenCrosslinkingClosed
        E.matrixDegradationRateClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse