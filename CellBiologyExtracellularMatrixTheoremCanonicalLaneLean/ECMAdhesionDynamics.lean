import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMAdhesionDynamicsPackage where
  integrinBinding : Prop
  focalAdhesionAssembly : Prop
  forceTransmission : Prop
  downstreamSignaling : Prop

structure ECMAdhesionDynamicsEvidence (P : ECMAdhesionDynamicsPackage) where
  integrinBindingClosed : P.integrinBinding
  focalAdhesionAssemblyClosed : P.focalAdhesionAssembly
  forceTransmissionClosed : P.forceTransmission
  downstreamSignalingClosed : P.downstreamSignaling

def ECMAdhesionDynamicsClosed (P : ECMAdhesionDynamicsPackage) : Prop :=
  P.integrinBinding ∧ P.focalAdhesionAssembly ∧ P.forceTransmission ∧ P.downstreamSignaling

theorem ecm_adhesion_dynamics_closed_from_evidence (P : ECMAdhesionDynamicsPackage) (E : ECMAdhesionDynamicsEvidence P) : ECMAdhesionDynamicsClosed P := by
  exact And.intro E.integrinBindingClosed (And.intro E.focalAdhesionAssemblyClosed (And.intro E.forceTransmissionClosed E.downstreamSignalingClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse