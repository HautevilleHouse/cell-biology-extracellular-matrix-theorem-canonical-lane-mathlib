import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.Mechanotransduction

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure DurotaxisPackage {I : IntegrinSignalingPackage}
    {M : MatrixStiffnessPackage I} {T : MechanotransductionPackage I M} where
  stiffnessGradientSensing : Prop
  polarizedMigration : Prop
  focalAdhesionTurnover : Prop
  lamellipodialProtrusion : Prop
  cellSpeedModulation : Prop

structure DurotaxisEvidence {I : IntegrinSignalingPackage}
    {M : MatrixStiffnessPackage I} {T : MechanotransductionPackage I M}
    (D : DurotaxisPackage I M T) where
  stiffnessGradientSensingClosed : D.stiffnessGradientSensing
  polarizedMigrationClosed : D.polarizedMigration
  focalAdhesionTurnoverClosed : D.focalAdhesionTurnover
  lamellipodialProtrusionClosed : D.lamellipodialProtrusion
  cellSpeedModulationClosed : D.cellSpeedModulation

def DurotaxisClosed {I : IntegrinSignalingPackage}
    {M : MatrixStiffnessPackage I} {T : MechanotransductionPackage I M}
    (D : DurotaxisPackage I M T) : Prop :=
  D.stiffnessGradientSensing ∧ D.polarizedMigration ∧
  D.focalAdhesionTurnover ∧ D.lamellipodialProtrusion ∧ D.cellSpeedModulation

theorem durotaxis_closed_from_evidence
    {I : IntegrinSignalingPackage} {M : MatrixStiffnessPackage I}
    {T : MechanotransductionPackage I M} (D : DurotaxisPackage I M T)
    (E : DurotaxisEvidence D) : DurotaxisClosed D := by
  exact And.intro E.stiffnessGradientSensingClosed
    (And.intro E.polarizedMigrationClosed
      (And.intro E.focalAdhesionTurnoverClosed
        (And.intro E.lamellipodialProtrusionClosed
          E.cellSpeedModulationClosed)))

end HautevilleHouse.CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse