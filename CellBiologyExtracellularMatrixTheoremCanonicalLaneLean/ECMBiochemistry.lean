import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMBiochemistryPackage where
  collagenTypeI : Prop
  collagenTypeIV : Prop
  lamininPresent : Prop
  fibronectinPresent : Prop
  proteoglycansPresent : Prop
  crosslinkingEnzymesActive : Prop

structure ECMBiochemistryEvidence (E : ECMBiochemistryPackage) where
  collagenTypeIClosed : E.collagenTypeI
  collagenTypeIVClosed : E.collagenTypeIV
  lamininPresentClosed : E.lamininPresent
  fibronectinPresentClosed : E.fibronectinPresent
  proteoglycansPresentClosed : E.proteoglycansPresent
  crosslinkingEnzymesActiveClosed : E.crosslinkingEnzymesActive

def ECMBiochemistryClosed (E : ECMBiochemistryPackage) : Prop :=
  E.collagenTypeI ∧ E.collagenTypeIV ∧ E.lamininPresent ∧ E.fibronectinPresent ∧ E.proteoglycansPresent ∧ E.crosslinkingEnzymesActive

theorem ecm_biochemistry_closed_from_evidence (E : ECMBiochemistryPackage) (Ev : ECMBiochemistryEvidence E) :
    ECMBiochemistryClosed E := by
  exact And.intro Ev.collagenTypeIClosed
    (And.intro Ev.collagenTypeIVClosed
      (And.intro Ev.lamininPresentClosed
        (And.intro Ev.fibronectinPresentClosed
          (And.intro Ev.proteoglycansPresentClosed Ev.crosslinkingEnzymesActiveClosed))))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse