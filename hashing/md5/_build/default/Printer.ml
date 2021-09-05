module Printer = struct
  let empty = []
  let is_empty s = (s = [])

  let push x s = x :: s

  let peek = function
    | [] -> failwith "Empty"
    | x::_ -> x

  let pop = function
    | [] -> failwith "Empty"
    | _::xs -> xs

  let print s = print_endline s
end

module type Printer = sig

    val print : s string -> unit

end
