import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure CellAdhesionMoleculesPackage where
  integrinsPresent : Prop
  cadherinsPresent : Prop
  selectinsPresent : Prop
  immunoglobulinSFPresent : Prop
  focalAdhesionKinaseActivated : Prop

structure CellAdhesionMoleculesEvidence (C : CellAdhesionMoleculesPackage) where
  integrinsPresentClosed : C.integrinsPresent
  cadherinsPresentClosed : C.cadherinsPresent
  selectinsPresentClosed : C.selectinsPresent
  immunoglobulinSFPresentClosed : C.immunoglobulinSFPresent
  focalAdhesionKinaseActivatedClosed : C.focalAdhesionKinaseActivated

def CellAdhesionMoleculesClosed (C : CellAdhesionMoleculesPackage) : Prop :=
  C.integrinsPresent ∧ C.cadherinsPresent ∧ C.selectinsPresent ∧ C.immunoglobulinSFPresent ∧ C.focalAdhesionKinaseActivated

theorem cell_adhesion_molecules_closed_from_evidence (C : CellAdhesionMoleculesPackage) (E : CellAdhesionMoleculesEvidence C) :
    CellAdhesionMoleculesClosed C := by
  exact And.intro E.integrinsPresentClosed
    (And.intro E.cadherinsPresentClosed
      (And.intro E.selectinsPresentClosed
        (And.intro E.immunoglobulinSFPresentClosed E.focalAdhesionKinaseActivatedClosed)))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse