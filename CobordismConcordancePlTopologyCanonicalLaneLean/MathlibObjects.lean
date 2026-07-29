import CobordismConcordancePlTopologyCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace CobordismConcordancePlTopologyCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure CobordismSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure CobordismAdmittedObject where
  space : CobordismSpace
  closedManifold : Prop
  plStructure : Prop
  concordanceClass : Type
  concordanceEquiv : Prop
  conclusion : concordanceEquiv

structure CobordismEndgameState where
  object : CobordismAdmittedObject

def CobordismWitnessClosed (O : CobordismAdmittedObject) : Prop :=
  O.concordanceEquiv

end CobordismConcordancePlTopologyCanonicalLaneLean
end HautevilleHouse
