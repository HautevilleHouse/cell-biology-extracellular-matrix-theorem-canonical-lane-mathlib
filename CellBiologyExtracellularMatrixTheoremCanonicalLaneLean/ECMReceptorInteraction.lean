import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMReceptorInteractionPackage where
  integrinBinding : Prop
  dystroglycanBinding : Prop
  syndecanBinding : Prop
  cd44Binding : Prop
  focalAdhesionFormation : Prop
  hemidesmosomeFormation : Prop

structure ECMReceptorInteractionEvidence (R : ECMReceptorInteractionPackage) where
  integrinBindingClosed : R.integrinBinding
  dystroglycanBindingClosed : R.dystroglycanBinding
  syndecanBindingClosed : R.syndecanBinding
  cd44BindingClosed : R.cd44Binding
  focalAdhesionFormationClosed : R.focalAdhesionFormation
  hemidesmosomeFormationClosed : R.hemidesmosomeFormation

def ECMReceptorInteractionClosed (R : ECMReceptorInteractionPackage) : Prop :=
  R.integrinBinding ∧ R.dystroglycanBinding ∧ R.syndecanBinding ∧ R.cd44Binding ∧ R.focalAdhesionFormation ∧ R.hemidesmosomeFormation

theorem ecm_receptor_interaction_closed_from_evidence (R : ECMReceptorInteractionPackage) (E : ECMReceptorInteractionEvidence R) :
    ECMReceptorInteractionClosed R := by
  exact And.intro E.integrinBindingClosed
    (And.intro E.dystroglycanBindingClosed
      (And.intro E.syndecanBindingClosed
        (And.intro E.cd44BindingClosed
          (And.intro E.focalAdhesionFormationClosed E.hemidesmosomeFormationClosed))))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse