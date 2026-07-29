import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.CellAdhesionDynamics

/-!
# Signal Transduction Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure SignalTransductionPackage {E : ExtracellularMatrixSystem}
    (D : CellAdhesionDynamicsPackage E) where
  integrinSignaling : Prop
  fakActivation : Prop
  srcFamilyKinases : Prop
  rasMapkPathway : Prop
  pi3kAktPathway : Prop
  rhoGtpases : Prop

structure SignalTransductionEvidence {E : ExtracellularMatrixSystem}
    {D : CellAdhesionDynamicsPackage E} (S : SignalTransductionPackage D) where
  integrinSignalingClosed : S.integrinSignaling
  fakActivationClosed : S.fakActivation
  srcFamilyKinasesClosed : S.srcFamilyKinases
  rasMapkPathwayClosed : S.rasMapkPathway
  pi3kAktPathwayClosed : S.pi3kAktPathway
  rhoGtpasesClosed : S.rhoGtpases

def SignalTransductionClosed {E : ExtracellularMatrixSystem}
    {D : CellAdhesionDynamicsPackage E} (S : SignalTransductionPackage D) : Prop :=
  S.integrinSignaling ∧ S.fakActivation ∧ S.srcFamilyKinases ∧
  S.rasMapkPathway ∧ S.pi3kAktPathway ∧ S.rhoGtpases

theorem signal_transduction_closed_from_evidence
    {E : ExtracellularMatrixSystem} {D : CellAdhesionDynamicsPackage E}
    (S : SignalTransductionPackage D) (Ev : SignalTransductionEvidence S) :
    SignalTransductionClosed S := by
  exact And.intro Ev.integrinSignalingClosed
    (And.intro Ev.fakActivationClosed
      (And.intro Ev.srcFamilyKinasesClosed
        (And.intro Ev.rasMapkPathwayClosed
          (And.intro Ev.pi3kAktPathwayClosed Ev.rhoGtpasesClosed))))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse
