(** [bit] is either a [Zero] or a [One] *)
type bit = Zero | One

(** Type [t] of this module has the signature (bit list, size: int), where the size is the lenght of the list **)
type t = (bit list * int)
val identity: unit -> t
val append:  t -> t -> t
