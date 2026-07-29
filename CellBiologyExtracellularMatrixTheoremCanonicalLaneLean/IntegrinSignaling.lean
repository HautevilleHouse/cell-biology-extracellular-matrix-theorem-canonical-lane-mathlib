import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.AdmissibleClass

/-!
# Integrin Signaling Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure IntegrinSignalingPackage where
  integrinActivation : Prop
  focalAdhesionKinase : Prop
  downstreamPathway : Prop
  cytoskeletalRearrangement : Prop

structure IntegrinSignalingEvidence (I : IntegrinSignalingPackage) where
  integrinActivationClosed : I.integrinActivation
  focalAdhesionKinaseClosed : I.focalAdhesionKinase
  downstreamPathwayClosed : I.downstreamPathway
  cytoskeletalRearrangementClosed : I.cytoskeletalRearrangement

def IntegrinSignalingClosed (I : IntegrinSignalingPackage) : Prop :=
  I.integrinActivation ∧ I.focalAdhesionKinase ∧ I.downstreamPathway ∧ I.cytoskeletalRearrangement

theorem integrin_signaling_closed_from_evidence (I : IntegrinSignalingPackage)
    (E : IntegrinSignalingEvidence I) : IntegrinSignalingClosed I := by
  exact And.intro E.integrinActivationClosed
    (And.intro E.focalAdhesionKinaseClosed
      (And.intro E.downstreamPathwayClosed E.cytoskeletalRearrangementClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse