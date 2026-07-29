import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure EndothelialCellFunctionPackage where
  ecmContactMediated : Prop
  barrierFunctionMaintained : Prop
  angiogenesisRegulated : Prop
  integrinSignalingActive : Prop
  vegfSignalingInvolved : Prop

structure EndothelialCellFunctionEvidence (E : EndothelialCellFunctionPackage) where
  ecmContactMediatedClosed : E.ecmContactMediated
  barrierFunctionMaintainedClosed : E.barrierFunctionMaintained
  angiogenesisRegulatedClosed : E.angiogenesisRegulated
  integrinSignalingActiveClosed : E.integrinSignalingActive
  vegfSignalingInvolvedClosed : E.vegfSignalingInvolved

def EndothelialCellFunctionClosed (E : EndothelialCellFunctionPackage) : Prop :=
  E.ecmContactMediated ∧ E.barrierFunctionMaintained ∧ E.angiogenesisRegulated ∧ E.integrinSignalingActive ∧ E.vegfSignalingInvolved

theorem endothelial_cell_function_closed_from_evidence (E : EndothelialCellFunctionPackage) (Ev : EndothelialCellFunctionEvidence E) :
    EndothelialCellFunctionClosed E := by
  exact And.intro Ev.ecmContactMediatedClosed
    (And.intro Ev.barrierFunctionMaintainedClosed
      (And.intro Ev.angiogenesisRegulatedClosed
        (And.intro Ev.integrinSignalingActiveClosed Ev.vegfSignalingInvolvedClosed)))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse