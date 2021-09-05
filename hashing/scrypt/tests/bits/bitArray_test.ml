open OUnit2
open Lib.BitArray

let identityTest = "test suite for identity" >::: [
  "identity"  >:: (fun _ -> assert_equal ([], 0) (identity ()));
]

let appendTest = "test suite for append" >::: [
  "append none"  >:: (fun _ -> assert_equal ([], 0) (append ([], 0) ([], 0)));
  "append oneTwo"  >:: (fun _ -> assert_equal ([One; Zero], 3) (append ([One], 1) ([Zero], 2)));
  "append noneZero"  >:: (fun _ -> assert_equal ([Zero], 3) (append ([], 1) ([Zero], 2)));
  "append oneNone"  >:: (fun _ -> assert_equal ([One], 6) (append ([One], 4) ([], 2)));
]

let run_all () = run_test_tt_main identityTest;
                 run_test_tt_main appendTest;
