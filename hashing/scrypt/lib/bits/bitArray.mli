


type bit = Zero | One
type t = (bit list * int)
val identity: unit -> t
val append:  t -> t -> t
