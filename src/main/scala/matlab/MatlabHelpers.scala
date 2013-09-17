package com.faacets
package matlab

object MatlabHelpers {
  def repr(r: String): Repr = r match {
    case "FRepr" => FRepr
    case "FCRepr" => FCRepr
    case "NCRepr" => NCRepr
    case "FGRepr" => FGRepr
    case "NGRepr" => NGRepr
    case "SRepr" => SRepr
    case "QRepr" => SRepr
    case _ => throw new IllegalArgumentException("Illegal Repr name: " + r)
  }
}
