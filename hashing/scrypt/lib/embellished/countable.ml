module type CombinableType =
  sig
    type t
    val append: t -> t -> t
    val identity: unit -> t
  end

module Countable (Comb: CombinableType) = struct
  include Comb
  let rec flatten' list total = match list with
                          | [] -> total
                          | head :: tail -> flatten' tail (append total head)

  let flatten list = flatten' list (identity ())
end