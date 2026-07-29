import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure MatrixStiffnessMechanotransductionPackage where
  substrateStiffness : Prop
  cellForceGeneration : Prop
  nuclearDeformation : Prop
  geneExpressionRegulation : Prop

structure MatrixStiffnessMechanotransductionEvidence (P : MatrixStiffnessMechanotransductionPackage) where
  substrateStiffnessClosed : P.substrateStiffness
  cellForceGenerationClosed : P.cellForceGeneration
  nuclearDeformationClosed : P.nuclearDeformation
  geneExpressionRegulationClosed : P.geneExpressionRegulation

def MatrixStiffnessMechanotransductionClosed (P : MatrixStiffnessMechanotransductionPackage) : Prop :=
  P.substrateStiffness ∧ P.cellForceGeneration ∧ P.nuclearDeformation ∧ P.geneExpressionRegulation

theorem matrix_stiffness_mechanotransduction_closed_from_evidence
    (P : MatrixStiffnessMechanotransductionPackage)
    (E : MatrixStiffnessMechanotransductionEvidence P) :
    MatrixStiffnessMechanotransductionClosed P := by
  exact And.intro E.substrateStiffnessClosed
    (And.intro E.cellForceGenerationClosed
      (And.intro E.nuclearDeformationClosed E.geneExpressionRegulationClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse