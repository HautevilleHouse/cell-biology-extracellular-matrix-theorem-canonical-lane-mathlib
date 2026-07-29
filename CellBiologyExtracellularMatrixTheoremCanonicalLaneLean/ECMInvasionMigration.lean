import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure InvasionMigrationPackage where
  basementMembraneBreach : Prop
  amoeboidMesenchymalSwitch : Prop
  focalizedProteolysis : Prop
  migrationVelocity : Prop

structure InvasionMigrationEvidence (P : InvasionMigrationPackage) where
  basementMembraneBreachClosed : P.basementMembraneBreach
  amoeboidMesenchymalSwitchClosed : P.amoeboidMesenchymalSwitch
  focalizedProteolysisClosed : P.focalizedProteolysis
  migrationVelocityClosed : P.migrationVelocity

def InvasionMigrationClosed (P : InvasionMigrationPackage) : Prop :=
  P.basementMembraneBreach ∧ P.amoeboidMesenchymalSwitch ∧
  P.focalizedProteolysis ∧ P.migrationVelocity

theorem invasion_migration_closed_from_evidence (P : InvasionMigrationPackage)
    (E : InvasionMigrationEvidence P) : InvasionMigrationClosed P := by
  exact And.intro E.basementMembraneBreachClosed
    (And.intro E.amoeboidMesenchymalSwitchClosed
      (And.intro E.focalizedProteolysisClosed
        E.migrationVelocityClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse