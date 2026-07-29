import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.MatrixStiffness

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure MechanotransductionPackage {I : IntegrinSignalingPackage}
    {M : MatrixStiffnessPackage I} where
  rhoGtpaseActivation : Prop
  yapTazNuclearTranslocation : Prop
  mlcPhosphorylation : Prop
  stressFiberFormation : Prop
  nuclearMechanics : Prop

structure MechanotransductionEvidence {I : IntegrinSignalingPackage}
    {M : MatrixStiffnessPackage I} (T : MechanotransductionPackage I M) where
  rhoGtpaseActivationClosed : T.rhoGtpaseActivation
  yapTazNuclearTranslocationClosed : T.yapTazNuclearTranslocation
  mlcPhosphorylationClosed : T.mlcPhosphorylation
  stressFiberFormationClosed : T.stressFiberFormation
  nuclearMechanicsClosed : T.nuclearMechanics

def MechanotransductionClosed {I : IntegrinSignalingPackage}
    {M : MatrixStiffnessPackage I} (T : MechanotransductionPackage I M) : Prop :=
  T.rhoGtpaseActivation ∧ T.yapTazNuclearTranslocation ∧
  T.mlcPhosphorylation ∧ T.stressFiberFormation ∧ T.nuclearMechanics

theorem mechanotransduction_closed_from_evidence
    {I : IntegrinSignalingPackage} {M : MatrixStiffnessPackage I}
    (T : MechanotransductionPackage I M)
    (E : MechanotransductionEvidence T) : MechanotransductionClosed T := by
  exact And.intro E.rhoGtpaseActivationClosed
    (And.intro E.yapTazNuclearTranslocationClosed
      (And.intro E.mlcPhosphorylationClosed
        (And.intro E.stressFiberFormationClosed
          E.nuclearMechanicsClosed)))

end HautevilleHouse.CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse