open OUnit2
open Lib.Countable

module MockedCombinableType  = struct
                                    type t = (int * int)
                                    let append (t1a, t1b) (t2a, t2b) = ((t1a + t2a), (t1b + t2b))
                                    let identity () = (0 , 0)
                                end

module CountableTester = Countable(MockedCombinableType)

include CountableTester

let tests = "test suite for flatten" >::: [
  "empty"  >::              (fun _ -> assert_equal (0, 0) (flatten []));
  "onetwo"    >::           (fun _ -> assert_equal (1, 2) (flatten [(1,2)]));
  "onetwo-threefour" >::    (fun _ -> assert_equal (4, 6) (flatten [(1,2); (3,4)]));
  "onetwo-oneone" >::       (fun _ -> assert_equal (5, 7) (flatten [(1,2); (3,4); (1,1)]));
]


let run_all () = run_test_tt_main tests
