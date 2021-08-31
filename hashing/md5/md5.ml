(* let _ = let bitList = Bit.string_to_bit_list (input_line stdin)  in
            let appendingBits  =  bitList |> Bit.count_bits |> (bitList @ Bit.need_append) in
                appendingBits |> Bit.bit_list_to_string |> print_endline; *)
module type Printer = sig
    val print : string -> unit
    val print_all : string list -> unit
end
module Printer:Printer = struct
  let print s = print_endline s
  let rec print_all slist =  match slist with
                    | [] -> ()
                    | head :: tails -> head |> (^) "|"  |>  print_endline ; (print_all tails) 

end


module type Set = sig
  type 'a t
  val empty : 'a t
  val mem   : 'a -> 'a t -> bool
  val add   : 'a -> 'a t -> 'a t
  val head : 'a t -> 'a 
  val elts  : 'a t -> 'a list
end

module ListSetDupsImpl = struct
  type 'a t   = 'a list
  let empty   = []
  let mem     = List.mem
  let add x s = x::s
  let head x = match x with
                | [] -> failwith "empty list"
                | head::_ -> head
  let elts s  = List.sort_uniq Stdlib.compare s
end

module ListSetDups : Set = ListSetDupsImpl

module ListSetDupsExtended = struct
  include ListSetDupsImpl
  let of_list lst = lst
end

open Printer
open ListSetDupsExtended
type order = LT | EQ | GT

let _ = print (head  ( of_list ["a"; "b";]))