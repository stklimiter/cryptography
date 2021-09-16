
(** [bit] is either a [Zero] or a [One] *)
type bit = Zero | One

(** [binary] is list of [bit]s *)
type binary = bit list

(* Converts any positive integer, to 8 bit binary*)
val int_to_8_binary: int -> binary

(* Converts any positive integer, to n bit binary*)
val int_to_binary: int -> int -> binary

(* Converts any string, to 8 bit binary*)
val string_to_8_binary: string  -> binary
