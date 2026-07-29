import canonicalLaneMathlib.AdmissibleClass
import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.ExtracellularMatrixSystem

/-!
# Cell Adhesion Dynamics Package
-/

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure CellAdhesionDynamicsPackage (E : ExtracellularMatrixSystem) where
  adhesionTurnover : Prop
  focalAdhesionAssembly : Prop
  forceTransmission : Prop
  integrinClustering : Prop
  downstreamSignaling : Prop

structure CellAdhesionDynamicsEvidence {E : ExtracellularMatrixSystem}
    (D : CellAdhesionDynamicsPackage E) where
  adhesionTurnoverClosed : D.adhesionTurnover
  focalAdhesionAssemblyClosed : D.focalAdhesionAssembly
  forceTransmissionClosed : D.forceTransmission
  integrinClusteringClosed : D.integrinClustering
  downstreamSignalingClosed : D.downstreamSignaling

def CellAdhesionDynamicsClosed {E : ExtracellularMatrixSystem}
    (D : CellAdhesionDynamicsPackage E) : Prop :=
  D.adhesionTurnover ∧ D.focalAdhesionAssembly ∧ D.forceTransmission ∧
  D.integrinClustering ∧ D.downstreamSignaling

theorem cell_adhesion_dynamics_closed_from_evidence
    {E : ExtracellularMatrixSystem} (D : CellAdhesionDynamicsPackage E)
    (Ev : CellAdhesionDynamicsEvidence D) : CellAdhesionDynamicsClosed D := by
  exact And.intro Ev.adhesionTurnoverClosed
    (And.intro Ev.focalAdhesionAssemblyClosed
      (And.intro Ev.forceTransmissionClosed
        (And.intro Ev.integrinClusteringClosed Ev.downstreamSignalingClosed)))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse
