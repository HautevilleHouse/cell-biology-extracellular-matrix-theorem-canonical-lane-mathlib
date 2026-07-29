import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

structure ECMSignalingCrossTalkPackage where
  integrinGfCrosstalk : Prop
  ecmReceptorActivation : Prop
  mapkPi3kPathways : Prop
  feedbackLoops : Prop

structure ECMSignalingCrossTalkEvidence (P : ECMSignalingCrossTalkPackage) where
  integrinGfCrosstalkClosed : P.integrinGfCrosstalk
  ecmReceptorActivationClosed : P.ecmReceptorActivation
  mapkPi3kPathwaysClosed : P.mapkPi3kPathways
  feedbackLoopsClosed : P.feedbackLoops

def ECMSignalingCrossTalkClosed (P : ECMSignalingCrossTalkPackage) : Prop :=
  P.integrinGfCrosstalk ∧ P.ecmReceptorActivation ∧ P.mapkPi3kPathways ∧ P.feedbackLoops

theorem ecm_signaling_cross_talk_closed_from_evidence (P : ECMSignalingCrossTalkPackage) (E : ECMSignalingCrossTalkEvidence P) : ECMSignalingCrossTalkClosed P := by
  exact And.intro E.integrinGfCrosstalkClosed (And.intro E.ecmReceptorActivationClosed (And.intro E.mapkPi3kPathwaysClosed E.feedbackLoopsClosed))

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse