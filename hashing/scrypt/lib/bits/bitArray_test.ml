open OUnit2
open BitArray

let tests = "test suite for flatten" >::: [
  "empty"  >:: (fun _ -> assert_equal [] (flatten ([[]] )));
(*  "one"    >:: (fun _ -> assert_equal 1 (sum [1]));*)
(*  "onetwo" >:: (fun _ -> assert_equal 3 (sum [1; 2]));*)
]


let _ = run_test_tt_main tests
