open OUnit2
open Lib.BitArray

let tests = "test suite for flatten" >::: [
  "empty"  >:: (fun _ -> assert_equal ([], 0) (flatten ([([], 0)] )));
(*  "one"    >:: (fun _ -> assert_equal 1 (sum [1]));*)
(*  "onetwo" >:: (fun _ -> assert_equal 3 (sum [1; 2]));*)
]


let run_all () = run_test_tt_main tests
