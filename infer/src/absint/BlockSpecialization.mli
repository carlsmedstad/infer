(*
 * Copyright (c) Facebook, Inc. and its affiliates.
 *
 * This source code is licensed under the MIT license found in the
 * LICENSE file in the root directory of this source tree.
 *)

open! IStd

(* same representation for both args and captured variables *)
type actual = ProcAttributes.passed_block option

val get_captured : actual list -> CapturedVar.t list

val create_specialized_procdesc :
  Procname.t -> captured_actuals:actual list -> arg_actuals:actual list -> Procname.t option
