import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMBasementMembraneAssemblyPackage where
  lamininPolymerization : Prop
  collagenIvNetwork : Prop
  nidogenCrosslinking : Prop
  perlecanIncorporation : Prop

structure ECMBasementMembraneAssemblyEvidence (P : ECMBasementMembraneAssemblyPackage) where
  lamininPolymerizationClosed : P.lamininPolymerization
  collagenIvNetworkClosed : P.collagenIvNetwork
  nidogenCrosslinkingClosed : P.nidogenCrosslinking
  perlecanIncorporationClosed : P.perlecanIncorporation

def ECMBasementMembraneAssemblyClosed (P : ECMBasementMembraneAssemblyPackage) : Prop :=
  P.lamininPolymerization ∧ P.collagenIvNetwork ∧ P.nidogenCrosslinking ∧ P.perlecanIncorporation

theorem ecm_basement_membrane_assembly_closed_from_evidence (P : ECMBasementMembraneAssemblyPackage) (E : ECMBasementMembraneAssemblyEvidence P) : ECMBasementMembraneAssemblyClosed P := by
  exact And.intro E.lamininPolymerizationClosed (And.intro E.collagenIvNetworkClosed (And.intro E.nidogenCrosslinkingClosed E.perlecanIncorporationClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse