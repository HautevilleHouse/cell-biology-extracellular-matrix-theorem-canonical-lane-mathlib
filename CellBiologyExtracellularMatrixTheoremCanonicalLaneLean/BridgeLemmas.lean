import CellBiologyExtracellularMatrixTheoremCanonicalLaneLean.Projection

namespace HautevilleHouse
namespace CellBiologyExtracellularMatrixTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ECMWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CellBiologyExtracellularMatrixTheoremCanonicalLaneLean
end HautevilleHouse