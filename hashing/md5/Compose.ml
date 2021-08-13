let compose_fn fn1 fn2 = fun i -> fn2 (fn1 i)

let identity_fn = fun i -> i

let and_then fn1 = compose_fn fn1
 
let rec compose_from fn_list fn =           match fn_list with
                                            | [] -> fn
                                            | head :: tails -> compose_from tails (compose_fn fn head)

let compose fn_list =  compose_from fn_list identity_fn