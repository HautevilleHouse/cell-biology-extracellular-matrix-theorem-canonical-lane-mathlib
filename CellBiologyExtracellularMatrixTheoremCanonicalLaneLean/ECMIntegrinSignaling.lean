import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMIntegrinSignalingPackage where
  integrinActivation : Prop
  focalAdhesionKinase : Prop
  downstreamSignaling : Prop
  cytoskeletalCoupling : Prop

structure ECMIntegrinSignalingEvidence (P : ECMIntegrinSignalingPackage) where
  integrinActivationClosed : P.integrinActivation
  focalAdhesionKinaseClosed : P.focalAdhesionKinase
  downstreamSignalingClosed : P.downstreamSignaling
  cytoskeletalCouplingClosed : P.cytoskeletalCoupling

def ECMIntegrinSignalingClosed (P : ECMIntegrinSignalingPackage) : Prop :=
  P.integrinActivation ∧ P.focalAdhesionKinase ∧ P.downstreamSignaling ∧ P.cytoskeletalCoupling

theorem ecm_integrin_signaling_closed_from_evidence (P : ECMIntegrinSignalingPackage)
    (E : ECMIntegrinSignalingEvidence P) : ECMIntegrinSignalingClosed P := by
  exact And.intro E.integrinActivationClosed
    (And.intro E.focalAdhesionKinaseClosed
      (And.intro E.downstreamSignalingClosed E.cytoskeletalCouplingClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse