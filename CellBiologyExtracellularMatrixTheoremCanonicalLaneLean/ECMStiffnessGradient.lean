import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMStiffnessGradientPackage where
  gradedCollagenDensity : Prop
  crosslinkingVariation : Prop
  durotaxisResponse : Prop
  cellMigration : Prop

structure ECMStiffnessGradientEvidence (P : ECMStiffnessGradientPackage) where
  gradedCollagenDensityClosed : P.gradedCollagenDensity
  crosslinkingVariationClosed : P.crosslinkingVariation
  durotaxisResponseClosed : P.durotaxisResponse
  cellMigrationClosed : P.cellMigration

def ECMStiffnessGradientClosed (P : ECMStiffnessGradientPackage) : Prop :=
  P.gradedCollagenDensity ∧ P.crosslinkingVariation ∧ P.durotaxisResponse ∧ P.cellMigration

theorem ecm_stiffness_gradient_closed_from_evidence (P : ECMStiffnessGradientPackage) (E : ECMStiffnessGradientEvidence P) : ECMStiffnessGradientClosed P := by
  exact And.intro E.gradedCollagenDensityClosed (And.intro E.crosslinkingVariationClosed (And.intro E.durotaxisResponseClosed E.cellMigrationClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse